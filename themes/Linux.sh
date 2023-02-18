#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)

curl -L https://github.com/Gogh-Co/Gogh/tarball/master | gzip -cd | tar -xvf - -C "$dir/"

find "$dir" -type f -name "*.sh" | grep -E 'belafonte|gruvbox|dracula|zenburn' | xargs -n 1 bash
