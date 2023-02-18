#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)

curl -L https://github.com/lysyi3m/macos-terminal-themes/tarball/master | gzip -cd | tar -xvf - -C "$dir"
curl -L https://github.com/sidnvy/gruvbox-terminal/tarball/master | gzip -cd | tar -xvf - -C "$dir"

while read -r line ; do
open "$line"
done < <( find "$dir" -type f -name "*.terminal" |\
              grep -iE 'belafonte|dracula|zenburn|gruvbox')
