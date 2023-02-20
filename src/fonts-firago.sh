#!/usr/bin/env bash

# Grab links from:
# https://bboxtype.com/fira/

set -euxv

dir=$(mktemp -d)
curl -L "https://bboxtype.com/downloads/FiraGO/Download_Folder_FiraGO_1001.zip" -o "$dir/font.zip"
unzip -x "$dir/font.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" | xargs -I {} cp -v {} "${FONTDIR}/"

dir=$(mktemp -d)
curl -L "https://bboxtype.com/downloads/Fira/Download_Folder_FiraSans_4301.zip" -o "$dir/font.zip"
unzip -x "$dir/font.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" | xargs -I {} cp -v {} "${FONTDIR}/"

dir=$(mktemp -d)
curl -L "https://bboxtype.com/downloads/Fira/Fira_Mono_3_2.zip"  -o "$dir/font.zip"
unzip -x "$dir/font.zip" -d "$dir"
find "$dir" -type f -name "*.ttf" | xargs -I {} cp -v {} "${FONTDIR}/"
