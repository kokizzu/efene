# BEAM Toolbox

A list of tools and libraries that are useful for BEAM languages like efene, erlang, LFE and Elixir projects.


## Access Control

- [snarl](https://github.com/project-fifo/snarl): A Erlang based RBAC server.
- [nkrole](https://github.com/Nekso/nkrole): a framework for managing complex relations among arbitrary objects in a riak_core cluster

## Auth

- [OAuth2](https://github.com/kivra/oauth2)
- [social](https://github.com/dvv/social): Cowboy handler for social login via OAuth2 providers

## Build Tools

- [Rebar3](http://www.rebar3.org/)
- [Erlang.mk](https://github.com/ninenines/erlang.mk)

## Cache

- [Fling](https://github.com/basho-labs/fling): Cache library that promotes keys and values into mochiglobal objects
- [e2qc](https://github.com/arekinath/e2qc): Erlang 2Q NIF cache
- [cherly](https://github.com/leo-project/cherly): Cherly (sher-lee) is an in-VM caching library for Erlang
- [leo_mcerl](https://github.com/leo-project/leo_mcerl): leo_mcerl is a memory cache lib for Erlang

## Clients

- [kafkerl](https://github.com/HernanRivasAcosta/kafkerl): Apache Kafka producer/consumer for erlang
- [ekaf](https://github.com/helpshift/ekaf): A minimal, high-performance Kafka client in Erlang
- [cqerl](https://github.com/matehat/cqerl): Native Erlang CQL client for Cassandra
- [etorrent](https://github.com/jlouis/etorrent): Erlang Bittorrent Client
- [amqp_client](https://github.com/jbrisbin/amqp_client): Rebar-friendly fork of rabbitmq-erlang-client
- [zeta](https://github.com/tel/zeta): An Erlang client for Riemann
- [chumak](https://github.com/chovencorp/chumak): Pure Erlang implementation of ZeroMQ Message Transport Protocol

## Cloud

- [erlcloud](https://github.com/gleber/erlcloud)

## Command Line

- [getopt](https://github.com/jcomellas/getopt)
- [clique](https://github.com/basho/clique)
- [escript](http://www.erlang.org/doc/man/escript.html)
- [cf](https://github.com/project-fifo/cf): Colored output for io and io_lib
- [etermcap](https://github.com/project-fifo/etermcap): Pure erlang termcap library

## Compression

- [erlang-lz4](https://github.com/szktty/erlang-lz4): LZ4 bindings for Erlang

## Configuration

- [Cuttlefish](https://github.com/basho/cuttlefish)
- [econfig](https://github.com/benoitc/econfig): simple Erlang config handler using INI files

## Cryptography

- [crypto](http://www.erlang.org/doc/man/crypto.html): Crypto functions
- [pbkdf2](https://github.com/basho/erlang-pbkdf2): A PBKDF2 implementation for Erlang extracted from Apache CouchDB
- [enacl](https://github.com/jlouis/enacl): Erlang bindings for NaCl / libsodium
- [erlsha2](https://github.com/vinoski/erlsha2): SHA-224, SHA-256, SHA-384, SHA-512 implemented in Erlang NIFs

## Database Clients

- [odbc](http://www.erlang.org/doc/apps/odbc/databases.html)
- [epgsql](https://github.com/epgsql/epgsql)
- [pgpool](https://github.com/ostinelli/pgpool): A PosgreSQL client that automatically uses connection pools and handles reconnections in case of errors.
- [emysql](https://github.com/eonblast/Emysql/)
- [couchbeam](https://github.com/benoitc/couchbeam)
- [mongodb](https://github.com/mongodb/mongodb-erlang)
- [redo](https://github.com/heroku/redo): pipelined erlang redis client

## Databases

- [eleveldb](https://github.com/basho/eleveldb)
- [ETS](http://www.erlang.org/doc/man/ets.html)
- [DETS](http://www.erlang.org/doc/man/dets.html)
- [Mnesia](http://www.erlang.org/doc/man/mnesia.html)
- [Bitcask](https://github.com/basho/bitcask)
- [sumo_db](https://github.com/inaka/sumo_db)
- [erocksdb](https://github.com/leo-project/erocksdb): Erlang bindings to RocksDB datastore

## Data Formats

- [edn-erlang](https://github.com/seancribbs/edn-erlang)
- [erldn](https://github.com/marianoguerra/erldn)
- [transit-erlang](https://github.com/isaiah/transit-erlang): Transit format for erlang
- [msgpack-erlang](https://github.com/msgpack/msgpack-erlang): MessagePack (de)serializer implementation for Erlang
- [protobuffs](https://github.com/basho/erlang_protobuffs)
- [thrift](https://thrift.apache.org/lib/erl)
- [eavro](https://github.com/SIfoxDevTeam/eavro)
- [benc](https://github.com/jlouis/benc): Erlang BEncode parser/unparser
- [leo_csv](https://github.com/leo-project/leo_csv): CSV Parser for Erlang

## Data Structures

- [StateBox](https://github.com/mochi/statebox)
- [riak_dt](https://github.com/basho/riak_dt)
- [pqueue](https://github.com/okeuday/pqueue): Erlang Priority Queues
- [erlang-lru](https://github.com/barrel-db/erlang-lru): Erlang LRU: a fixed size LRU cache

## Data Structure Manipulation

- [Hubble](https://github.com/ferd/hubble)
- [Dotto](https://github.com/marianoguerra/dotto)

## Date and Time

- [dh_date](https://github.com/daleharvey/dh_date): Date formatting / parsing library for erlang
- [qdate](git@github.com:efene/efene.github.io.git): Erlang date, time, and timezone management: formatting, conversion, and date arithmetic
- [strftimerl](https://github.com/gmr/strftimerl): Erlang implementation of strftime
- [erlang_iso8601](https://github.com/inaka/erlang_iso8601): Erlang ISO 8601 date formatter/parser

## Distributed Programming

- [Riak Core](https://github.com/basho/riak_core): distributed system framework, the core of riak_kv
- [chash](https://github.com/Licenser/chash): consistent hashing library extracted from riak_core
- [plumtree](https://github.com/helium/plumtree): epidemic broadcast protocol
- [disco](https://github.com/discoproject/disco): Map/Reduce framework for distributed computing <http://discoproject.org>
- [nkdist](https://github.com/Nekso/nkdist): Erlang distributed processes
- [nkcluster](https://github.com/Nekso/nkcluster): A framework to manage jobs at huge Erlang clusters
- [dht](https://github.com/jlouis/dht): DHT implementation in Erlang
- [syn](https://github.com/ostinelli/syn): global process registry for Erlang

## Fault Tolerance

- [fuse](https://github.com/jlouis/fuse): A Circuit Breaker for Erlang
- [safetyvalve](https://github.com/jlouis/safetyvalve): A safety valve for your erlang node
- [breaky](https://github.com/mmzeeman/breaky): supervise and manage modules and processes depending on external resources.
- [circuit_breaker](https://github.com/klarna/circuit_breaker): Generic circuit breaker that can be used to break any service that isn't fully functional
- [elarm:](https://github.com/esl/elarm): an Alarm Manager for Erlang

## File System

- [fuserl](https://github.com/tonyrog/fuserl): Erlang bindings for FUSE

## Generative Testing

- [Triq](http://krestenkrab.github.io/triq/)
- [QuickCheck](http://www.quviq.com/products/erlang-quickcheck/)
- [PropEr](http://proper.softlab.ntua.gr/)
- [eqc_lib](https://github.com/jlouis/eqc_lib): Erlang QuickCheck common library functions

## HTTP Clients

- [Shotgun](https://github.com/inaka/shotgun)
- [Gun](https://github.com/extend/gun/)
- [Hackney](https://github.com/benoitc/hackney)

## Interop

- [jinterface](http://www.erlang.org/doc/apps/jinterface/index.html)
- [NIFs](http://www.erlang.org/doc/tutorial/nif.html)
- [Ports](http://www.erlang.org/doc/reference_manual/ports.html)

## Internet of Things

- [gen_coap](https://github.com/gotthardp/gen_coap): Generic Erlang CoAP Client/Server
- [vernemq](https://verne.mq/): The most scalable MQTT Message Broker. Powering IoT, M2M, Mobile, and Web Applications.
- [emqtt](http://emqtt.io/): The Massively Scalable MQTT Broker written in Erlang/OTP
- [emqttc](https://github.com/emqtt/emqttc): Asynchronous Erlang MQTT Client
- [rabbitmq-mqtt](https://github.com/rabbitmq/rabbitmq-mqtt): RabbitMQ MQTT gateway

## Javascript

- [erlang_js](https://github.com/basho/erlang_js)

## JSON

- [jsx](https://github.com/talentdeficit/jsx)
- [jiffy](https://github.com/davisp/jiffy)

## JSON Schema

- [jesse](https://github.com/klarna/jesse)

## JSON Web Token

- [ejwt](https://github.com/inaka/ejwt)
- [jwt-erl](https://github.com/marianoguerra/jwt-erl)

## JSON Patch

- [json-patch](https://github.com/marianoguerra/json-patch.erl)

## Load Generators

- [Ponos](https://github.com/klarna/ponos)
- [Tsung](http://tsung.erlang-projects.org/)
- [Typhoon](https://github.com/zalando/typhoon)

## Logging

- [Lager](https://github.com/basho/lager)
- [erlang-syslog](https://github.com/Vagabond/erlang-syslog): Erlang port driver for interacting with syslog via syslog(3)
- [chronica](https://github.com/eltex-ecss/chronica): Logger framework for Erlang applications

## Metrics

- [Exometer](https://github.com/Feuerlabs/exometer): Basic measurement objects and probe behavior
  - [exometer_json](https://github.com/helium/exometer_json): exometer reporter to push JSON to a sink over HTTP
- [Folsom](https://github.com/basho/folsom): Expose Erlang Events and Metrics
- [MzMetrics](https://github.com/machinezone/mzmetrics): High performance Erlang metrics library

## Mocking

- [Meck](https://github.com/eproxus/meck)

## Networking

- [Damocles](https://github.com/lostcolony/damocles)

## Package Manager

- [Hex](https://hex.pm/)
- [Rebar3 Hex Plugin](https://github.com/hexpm/rebar3_hex): plugin to use hex from rebar3

## Patterns

- [Erlang Patterns](http://www.erlangpatterns.org/): An experimental project to apply Christopher Alexander’s pattern language method, as outlined in The Timeless Way of Building, to Erlang programming.

## Parsing

- [Leex](http://www.erlang.org/doc/man/leex.html): lexer
- [Yeec](http://www.erlang.org/doc/man/yecc.html): LLR(1) parser generator
- [Spell1](https://github.com/rvirding/spell1): LL(1) parser generator
- [Neotoma](https://github.com/seancribbs/neotoma): packrat parser-generator for parsing expression grammars
- [Aleppo](https://github.com/ErlyORM/aleppo): Alternative Erlang Pre-Processor

## Parse Transforms & Erlang AST manipulation

- [ast_walk](https://github.com/marianoguerra/ast_walk): Walk the Erlang AST with the ability to mutate it and keep state during transversal
- [erl_id_trans](http://erlang.org/doc/man/erl_id_trans.html): Erlang identity AST transoform

## Performance and Debugging

- [Eper](https://github.com/massemanet/eper)
- [Recon](https://github.com/ferd/recon)
- [eflame](https://github.com/proger/eflame)
- [eep](https://github.com/virtan/eep): Erlang Easy Profiling (eep) application provides a way to analyze application performance and call hierarchy

## Plugins

- [hooks](https://github.com/barrel-db/hooks): generic plugin & hook system for Erlang applications

## Protocols

- [erlirc](https://github.com/archaelus/erlirc): Erlang IRC client/server framework
- [mdns](https://github.com/arcusfelis/mdns): More generic (yet another) mDNS, Zeroconf, Avahi client/server for Erlang
- [esmtp](https://github.com/archaelus/esmtp): Erlang SMTP library

## Probabilistic Data Structures

- [hyper](https://github.com/gameanalytics/hyper): Erlang implementation of HyperLogLog

## Products

- [CouchDB](http://couchdb.org/): Database that uses JSON for documents, JavaScrip tfoi MapReduce indexes, anod regular HTTP for its API
- [RabbitMQ](http://www.rabbitmq.com/): Robust messaging for applications
- [Riak](http://basho.com/products/#riak): Distributed NoSQL database with a key/value design and advanced local and multi-cluster replication
- [LeoFS](http://leo-project.net/): Unstructured Object Storage for the Web and a highly available, distributed, eventually consistent storage system.
- [OpenFlow](https://www.erlang-solutions.com/products/openflow): Software Defined Networking (SDN)
- [Zotonic](http://zotonic.com/): The Erlang Web Framework & CMS
- [logplex](https://github.com/heroku/logplex): Heroku log router
- [Chef](https://www.chef.io/): Automation for Web-Scale IT

## XMPP Servers

- [Ejabberd](https://www.process-one.net/en/ejabberd/): World's Most Popular XMPP Server
- [MongooseIM](https://www.erlang-solutions.com/products/mongooseim-massively-scalable-ejabberd-platform): Base platform for building high performance messaging systems leveraging XMPP

## XMPP Clients

- [escalus](https://github.com/esl/escalus): XMPP client library for conveniently testing XMPP servers

## Pub/Sub

- [ErlBus](http://cabol.github.io/erlbus-erlang-message-bus/)
- [gen_event](http://www.erlang.org/doc/man/gen_event.html)
- [West](https://github.com/cabol/west)
- [TinyMQ](https://github.com/ChicagoBoss/tinymq)
- [Syn](https://github.com/ostinelli/syn): A global Process Registry and Process Group manager for Erlang
- [leo_mq](https://github.com/leo-project/leo_mq): leo_mq is a local message-queueing library

## Rate Limiting

- [Pobox](https://github.com/ferd/pobox)
- [Backoff](https://github.com/ferd/backoff)

## Release Management

- [Relx](https://github.com/erlware/relx)

## Routing

- [Router](https://github.com/zotonic/router)
- [Cowboy Trails](https://github.com/inaka/cowboy-trails): A couple of improvements over Cowboy Routes

## Scheduling

- [ErlCron](https://github.com/erlware/erlcron)

## Server Sent Events Clients

- [Shotgun](https://github.com/inaka/shotgun)
- [Gun](https://github.com/extend/gun/)

## Sockets

- [Ranch](https://github.com/ninenines/ranch)
- [gen_tcp](http://www.erlang.org/doc/man/gen_tcp.html)
- [Shackle](https://github.com/lpgauth/shackle): High Performance Erlang Network Client Framework
- [Tecipe](https://github.com/bisphone/Tecipe): Lightweight and Flexible TCP Socket Acceptor Pool for Erlang

## SOAP

- [soap](https://github.com/bet365/soap): Make it easy to use SOAP from Erlang

## Static Checkers

- [Xref](http://www.erlang.org/doc/apps/tools/xref_chapter.html)
- [Dialyzer](http://www.erlang.org/doc/man/dialyzer.html)
- [Elvis](https://github.com/inaka/elvis)

## Statistics

- [basho_stats](https://github.com/basho/basho_stats)
- [bear](https://github.com/boundary/bear): a set of statistics functions for erlang

## Security

- [erlang-certifi](https://github.com/certifi/erlang-certifi): SSL Certificates for Erlang

## Templates

- [Mustache](https://github.com/soranoba/bbmustache)
- [ErlyDtl](https://github.com/erlydtl/erlydtl)

## Testing

- [Commom Test](http://www.erlang.org/doc/apps/common_test/basics_chapter.html)
- [EUnit](http://www.erlang.org/doc/apps/eunit/chapter.html)

## Time Series

- [Tnesia](https://github.com/bisphone/Tnesia): Time-series Data Storage
- [DalmatinerDB](https://dalmatiner.io/): A fast, distributed metric store
- [RiakTS](https://github.com/basho/riak_kv/tree/riak_ts-1.4.0): NOTE: as of this writing, Riak TS is a branch inside Riak KV, the link may be outdated

## Tools

- [observer_cli](https://github.com/zhongwencool/observer_cli): A sharp shell tool see erlang node.
- [erlyberly](https://github.com/andytill/erlyberly): debugger for erlang and elixir using erlang tracing. It is probably the easiest and quickest way to start debugging your erlang nodes.
- [visualixir](https://github.com/koudelka/visualixir): toy process visualizer for remote BEAM nodes, written in Phoenix/Elixir/d3.
- [edump](https://github.com/archaelus/edump): Erlang Crashdump Analysis Suite
- [kerl](https://github.com/kerl/kerl): Easy building and installing of Erlang/OTP instances

## Utils

- [Katana](https://github.com/inaka/erlang-katana)
- [uuid](https://github.com/okeuday/uuid)
- [erlware_commons](https://github.com/erlware/erlware_commons)
- [hope](https://github.com/ibnfirnas/hope)

## Web Servers

- [Cowboy](https://github.com/ninenines/cowboy)
- [Mochiweb](https://github.com/mochi/mochiweb/)
- [WebMachine](https://github.com/webmachine/webmachine/)
- [Elli](https://github.com/knutin/elli)
- [Yaws](http://yaws.hyber.org/)

## Web Server Utilities

- [Cowboy Swagger](https://github.com/inaka/cowboy-swagger): Swagger integration for Cowboy (built on trails)
- [sumo_rest](https://github.com/inaka/sumo_rest): Generic cowboy handlers to work with Sumo
- [vegur](https://github.com/heroku/vegur): HTTP Proxy Library

## Web Frameworks

- [Axiom](https://github.com/tsujigiri/axiom)
- [ChicagoBoss](https://github.com/ChicagoBoss/ChicagoBoss)
- [Tuah](http://mhishami.github.io/tuah/): A Simple Cowboy Frontend, inspired by BeepBeep

## Web Sockets Servers

- [Bullet](https://github.com/extend/bullet/)
- [N2O](https://github.com/synrc/n2o)

## Web Sockets Clients

- [Gun](https://github.com/extend/gun/)

## Worker/Resource Pools

- [Sidejob](https://github.com/basho/sidejob)
- [Poolboy](https://github.com/devinus/poolboy)
- [worker_pool](https://github.com/inaka/worker_pool)
- [episcina](https://github.com/erlware/episcina)
- [gascheduler](https://github.com/GameAnalytics/gascheduler)
- [dispcount](https://github.com/ferd/dispcount): Erlang task dispatcher based on ETS counters
- \`leo_pod \<https://github.com/leo-project/leo_pod\>\_\`: A Fast Erlang worker pool manager

## XML

- [Xmerl](http://www.erlang.org/doc/man/xmerl.html)
- [exml](https://github.com/paulgray/exml)
