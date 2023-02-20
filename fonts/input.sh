#!/usr/bin/env bash

set -euxv
dir=$(mktemp -d)

curl -L 'https://input.djr.com/build/?fontSelection=whole&a=0&g=0&i=0&l=0&zero=0&asterisk=0&braces=0&preset=default&line-height=1.2&accept=I+do&email=agl%40kxxp.net' -o "$dir/input.zip"
unzip -x "$dir/input.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" -print0 | xargs -0 -I {} cp -v {} "${FONTDIR}/"
