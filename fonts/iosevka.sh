#!/usr/bin/env bash

set -eu
set -xv

version=19.0.1

dir=$(mktemp -d)
curl -L "https://github.com/be5invis/Iosevka/releases/download/v${version}/ttf-iosevka-${version}.zip" -o "$dir/iosevka.zip"
unzip -x "$dir/iosevka.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" -print0 | xargs -0 -I {} cp -v {} "${FONTDIR}/"

dir=$(mktemp -d)
curl -L "https://github.com/be5invis/Iosevka/releases/download/v${version}/ttf-iosevka-aile-${version}.zip" -o "$dir/iosevka-aile.zip"
unzip -x "$dir/iosevka-aile.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" -print0 | xargs -0 -I {} cp -v {} "${FONTDIR}/"
