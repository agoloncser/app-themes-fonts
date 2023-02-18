#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)

curl -L "https://github.com/be5invis/Iosevka/releases/download/v19.0.0/ttf-iosevka-16.2.0.zip" -o "$dir/iosevka.zip"
unzip -x "$dir/iosevka.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" | xargs -I {} cp -v {} "${FONTDIR}/"
