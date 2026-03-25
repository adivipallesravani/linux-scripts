#!/bin/bash

# Script: file_info.sh
# Description: Checks if a given file/directory exists, identifies its type,
#              and displays detailed information.
# Usage: ./file_info.sh <filename>

FILE="$1"

# Check if input argument is provided
if [ -z "$FILE" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if file/directory exists
if [ -e "$FILE" ]; then

    # Determine file type
    if [ -f "$FILE" ]; then
        echo "$FILE is a regular file"

    elif [ -d "$FILE" ]; then
        echo "$FILE is a directory"

    else
        echo "$FILE is some other file type"
    fi

    # Display detailed file information
    echo
    echo "Long listing:"
    ls -l "$FILE"

else
    echo "$FILE does not exist"
fi
