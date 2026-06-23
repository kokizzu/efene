#!/usr/bin/env bash
#
# Convert the efene.org Sphinx reStructuredText docs into Markdown "extras"
# consumable by rebar3_ex_doc / hexdocs.
#
# Source of truth for the prose is the efene.github.io website repo. This
# script regenerates efene/guides/*.md and README.md from it. Re-run whenever
# the website docs change.
#
# Usage:
#   SITE=../efene.github.io scripts/convert_docs.sh
#
# Requires: pandoc (>= 3).

set -euo pipefail

SITE="${SITE:-efene.github.io}"
SRC="$SITE/source"
OUT="guides"

if ! command -v pandoc >/dev/null; then
    echo "pandoc not found; install pandoc >= 3" >&2
    exit 1
fi
if [ ! -d "$SRC" ]; then
    echo "source dir not found: $SRC (set SITE=path/to/efene.github.io)" >&2
    exit 1
fi

mkdir -p "$OUT"

# Pages to convert, in the order the website toctree lists them.
PAGES=(
    philosophy
    community
    help-needed
    quick-efene-introduction-busy-programmer
    language-introduction
    language-reference
    quickstart
    templates
    tradeoffs
    rebar-plugin
    recommended-libraries
    toolbox
)

# Post-process a pandoc-produced Markdown file in place to bridge the gap
# between pandoc's GitHub-flavored Markdown output and what ex_doc renders:
#  - GitHub alerts (> [!NOTE]/[!WARNING]) -> ex_doc admonition blockquotes,
#    since ex_doc does not understand GitHub alert syntax
#  - remove the empty <div class="contents"> blocks left by `.. contents::`
#    (ex_doc builds a per-page table of contents automatically)
#  - <span class="title-ref">x</span> (RST default role) -> `x` inline code
#  - drop the raw Twitter timeline widget (<a>/<script>); a plain text link
#    to the account already sits next to it in the source
postprocess() {
    local f="$1"

    # Sphinx :ref:`label` cross-references. pandoc has no notion of Sphinx
    # roles, so it renders them as inline code; rewrite to relative .md links
    # (ex_doc rewrites .md -> .html at build time). The 3 labels defined in
    # the rst sources map to these pages:
    sed -i \
        -e 's|`language-reference`|[language reference](language-reference.md)|g' \
        -e 's|`introduction`|[language introduction](language-introduction.md)|g' \
        -e 's|`quick-start`|[quickstart](quickstart.md)|g' \
        "$f"

    # GitHub alerts -> ex_doc admonitions
    sed -i \
        -e 's|^> \[!NOTE\]$|> #### Note {: .info}\n>|' \
        -e 's|^> \[!WARNING\]$|> #### Warning {: .warning}\n>|' \
        "$f"

    # Remove empty `.. contents::` divs (open line through closing </div>)
    sed -i '/<div class="contents"/,/<\/div>/d' "$f"

    # Drop the raw Twitter timeline widget
    sed -i \
        -e '/<a class="twitter-timeline"/d' \
        -e '/platform\.twitter\.com\/widgets\.js/d' \
        "$f"

    # RST default-role spans -> inline code (unescaping pandoc's backslashes)
    perl -0pi -e 's{<span class="title-ref">(.*?)</span>}{ my $x=$1; $x=~s/\\(.)/$1/g; "`$x`" }ge' "$f"
}

for page in "${PAGES[@]}"; do
    echo "converting $page"
    pandoc -f rst -t gfm --wrap=none "$SRC/$page.rst" -o "$OUT/$page.md"
    postprocess "$OUT/$page.md"
done

# README for the docs landing page (ex_doc {main, <<"readme">>}).
echo "converting README"
pandoc -f rst -t gfm --wrap=none README.rst -o README.md
# Point efene.org/<page>.html links at the bundled guides so they work both on
# GitHub (relative path) and on hexdocs (ex_doc rewrites .md -> .html). The bare
# site link has no doc equivalent, so just upgrade it to https.
sed -i -E \
    -e 's#https?://efene\.org/([a-z-]+)\.html#guides/\1.md#g' \
    -e 's#https?://efene\.org#https://efene.org#g' \
    -e 's#http://www\.apache\.org#https://www.apache.org#g' \
    README.md

echo "done. generated:"
ls -1 "$OUT"/*.md README.md
