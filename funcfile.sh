#!/bin/bash

function file_count() {
local FILE="$1"

if  [ ! -d "$FILE" ]; then
 echo " $FILE isnt dir"
return
fi

local COUNT=$(ls -1 "$FILE"| wc -l)
echo "$FILE:"
echo "$COUNT"
}
file_count /etc
file_count /var
file_count /usr/bin
file_count emo
