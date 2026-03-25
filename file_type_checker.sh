#!/bin/bash

# Script: file_type_checker.sh
# Description: Takes a file/directory as input, validates it,
#              checks its type, and returns appropriate exit codes.
# Usage: ./script.sh <file>

# Read input argument
FILE="$1"

# Check if argument is missing
[ -z "$FILE" ] && { echo "Usage : $0 <file>"; exit 4; }

# Check if file/directory does not exist
[ ! -e "$FILE" ] && { echo "file doesnt exists"; exit 3;}

# If file exists
echo "file exists"

# Check if it is a regular file
if [ -f "$FILE" ]; then 
   echo " it is a normal file"
   exit 0

# Check if it is a directory
elif [ -d "$FILE" ]; then
   echo "$FILE is a dir"
   exit 1

# If it is neither file nor directory
else 
   echo "$FILE is other type"
   exit 2 
fi
