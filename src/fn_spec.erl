-module(fn_spec).
-export([convert/1, convert_one/1, convert_type/1]).


% convert ast to spec ast
convert(Ast) -> convert(Ast, []).

convert([], Accum) ->
    lists:reverse(Accum);
convert([{op, _Line, 'bor', _Ast1, _Ast2}=Bor|T], Accum) ->
    convert(T, [convert_union(Bor)|Accum]);
convert([H|T], Accum) ->
    convert(T, [convert_one(H)|Accum]).

convert_one({call, Line, {remote, _, Mod, Fun}, []}) ->
    {remote_type, Line, [Mod, Fun, []]};

convert_one({call, Line, {remote, _, {atom, _, lists}, {atom, _, seq}},
        [{integer, _, _}=Start, {integer, _, _}=Stop]}) ->

    {type, Line, range, [Start, Stop]};

% the tuple type is translated into a different type than the other types
convert_one({call, Line, {atom, _, tuple}, []}) ->
    {type, Line, tuple, any};
% when the fun definition has ... as arguments
convert_one({call, Line, {atom, _, 'fun'}, [{def, DefLine, {dotdotdot, _}, Spec}]}) ->
    {type, Line, 'fun',
        [{type, DefLine, any}, convert_one(Spec)]};
% the case when the fun definition has more than one argument
convert_one({call, Line, {atom, _, 'fun'}, [{def, DefLine, {tuple, _, TupleItems}, Spec}]}) ->
    {type, Line, 'fun',
        [{type, DefLine, product, convert(TupleItems)}, convert_one(Spec)]};
% when the fun definition has only one argument (an expression in parenthesis)
convert_one({call, Line, {atom, _, 'fun'}, [{def, DefLine, Args, Spec}]}) ->
    {type, Line, 'fun',
        [{type, DefLine, product, [convert_one(Args)]}, convert_one(Spec)]};
convert_one({call, Line, {atom, _, Name}, Args}) ->
    {type, Line, Name, convert(Args)};
convert_one({def, Line, VarAst, Spec}) ->
    {ann_type, Line, [VarAst, convert_one(Spec)]};
convert_one({atom, _Line, _Val}=Ast) ->
    Ast;
convert_one({op, _Line, '-', {Type, Line, Val}}) ->
    {Type, Line, -Val};
convert_one({integer, _Line, _Val}=Ast) ->
    Ast;
convert_one({var, _Line, _Val}=Ast) ->
    Ast;
convert_one({record, Line, Name, Attrs}) ->
    {type, Line, record, [{atom, Line, Name}|convert(Attrs)]};

% convert typed record fields to a type
convert_one({typed_record_field, {record_field, Line, Name}, Type}) ->
    {type, Line, field_type,[convert_one(Name), convert_one(Type)]};
% convert ... to the any type
convert_one({dotdotdot, Line}) ->
    {type, Line, any};
% convert tuples to tuple type
convert_one({tuple, Line, Val}) ->
    {type, Line, tuple, convert(Val)};
% convert emtpy list
convert_one({nil, Line}) ->
    {type, Line, nil, []};
% convert emtpy binary types
convert_one({'bin', Line, []}) ->
    {type, Line, binary, [{integer, Line, 0}, {integer, Line, 0}]};
% convert binary types
convert_one({'bin', Line, _Val}=Ast) ->
    {type, Line, binary, convert(Ast)};
% convert cons to list types that have ,... (non empty lists)
convert_one({cons, Line, Type, {cons, _, {dotdotdot, _}, {nil, _}}}) ->
    {type, Line, nonempty_list, [convert_one(Type)]};
% convert cons to list types
convert_one({cons, Line, _Head, _Tail}=Ast) ->
    {type, Line, list, convert_list(Ast)};
% convert the binary or operator to unions
convert_one({op, _Line, 'bor', _Ast1, _Ast2}=Ast) ->
    convert_union(Ast);
% the types inside a record with type declaration for a filed that has type and
% not default value
convert_one({type, _, union, [{atom, _, undefined}, Type]}) ->
    Type;
% the types inside a record with type declaration
convert_one({type, _Line, union, _Types}=Ast) ->
    Ast;
convert_one(Node) ->
    throw({error, {element(2, Node), fn_parser, ["Invalid syntax in spec in element: ",
                    Node]}}).

convert_union({op, Line, 'bor', Ast1, Ast2}) ->
    {type, Line, union, lists:flatten([convert_union_left(Ast1), [convert_one(Ast2)]])}.

convert_union_left({op, _Line, 'bor', Ast1, Ast2}) ->
    [convert_union_left(Ast1), convert_one(Ast2)];
convert_union_left(Ast) ->
    convert_one(Ast).

convert_list({cons, _, Head, {nil, _}}) ->
        [convert_one(Head)];
convert_list({cons, _, Head, Tail}) ->
        [convert_one(Head)|convert_list(Tail)].

convert_type({call, _Line, {atom, _Line, Name}, Args}) ->
    {Name, convert(Args)}.