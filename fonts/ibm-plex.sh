#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)

curl -L https://github.com/IBM/plex/tarball/master | gzip -cd | tar -xvf - -C "$dir/"
find "$dir" -type f -name "*.ttf" | grep 'IBM-Plex' | grep -vE 'Arabic|Devangari|Hebrew|JP|KR|Thai|Variable' | xargs -I {} cp -v {} "${FONTDIR}/"
