#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)

curl -L https://github.com/protesilaos/iosevka-comfy/tarball/master | gzip -cd | tar -xvf - -C "$dir/"
find "$dir" -type f -name "*.ttf" | grep -v unhinted | xargs -I {} cp -v {} "${FONTDIR}/"
