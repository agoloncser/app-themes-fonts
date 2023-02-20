#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)
curl -L "https://github.com/be5invis/Iosevka/releases/download/v19.0.1/ttf-iosevka-aile-19.0.1.zip" -o "$dir/iosevka-aile.zip"
unzip -x "$dir/iosevka-aile.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" | xargs -I {} cp -v {} "${FONTDIR}/"
