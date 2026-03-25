#!/bin/bash

FILE="$1"

[ -z "$FILE" ] && { echo "Usage : $0 <file>"; exit 4; }
[ ! -e "$FILE" ] && { echo "file doesnt exists"; exit 3;}

echo "file exists"

if [ -f "$FILE" ]; then 
   echo " it is a normal file"
   exit 0
elif [ -d "$FILE" ]; then
   echo "$FILE is a dir"
   exit 1
else 
   echo "$FILE is other type"
   exit 2 
fi
