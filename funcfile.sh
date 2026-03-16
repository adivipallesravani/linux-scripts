#!/bin/bash

function file_count() {
local FILE="$1"
local COUNT=$(ls -1 "$FILE"| wc -l)
echo "$FILE:"
echo "$COUNT"
}
file_count /etc
file_count /var
file_count /usr/bin
