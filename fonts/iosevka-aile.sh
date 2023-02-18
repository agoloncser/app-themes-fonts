#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)
curl -L "https://github.com/be5invis/Iosevka/releases/download/v16.2.0/ttf-iosevka-aile-16.2.0.zip" -o "$dir/iosevka-aile.zip"
unzip -x "$dir/iosevka-aile.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" | xargs -I {} cp -v {} "${FONTDIR}/"
