#!/usr/bin/env bash

set -eu
set -xv
dir=$(mktemp -d)

curl -L "https://bboxtype.com/downloads/FiraGO/Download_Folder_FiraGO_1001.zip" -o "$dir/input.zip"
unzip -x "$dir/input.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" | xargs -I {} cp -v {} "${FONTDIR}/"
