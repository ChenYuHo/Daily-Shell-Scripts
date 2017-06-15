#!/bin/bash
if [[ $# -lt 3 ]]; then
    echo "Usage: ./cprename.sh TARGETFOLDER TARGETFILE FROMTYPE"
    exit 1
fi
TARGETFOLDER="$1"
TARGETFILE="$2"
FROMTYPE="$3"
file=$(basename "$TARGETFILE")
TOTYPE="${file##*.}"
find "$TARGETFOLDER" -maxdepth 1 -name "*.$FROMTYPE" | sed -e 's/\.pdf$//' | while read -r name
do
cp "$TARGETFILE" "$name.$TOTYPE"
done
