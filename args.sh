#!/bin/bash

# Script: args.sh
# Description: Accepts multiple file/directory arguments, checks their existence,
#              identifies their type, and displays detailed information.
# Usage: ./args.sh <file1> <file2> ...

# Check if no arguments are passed
if [ $# -eq 0 ]
then
    echo "please pass atleast an argument"
    exit 1
fi

# Loop through all input arguments
for FILE in "$@"; do

    # Check if file/directory exists
    if [ -e "$FILE" ]
    then
        # Check if it is a regular file
        if [ -f "$FILE" ]
        then 
            echo " $FILE is regular file"

        # Check if it is a directory
        elif [ -d $FILE ]
        then 
            echo "$FILE is directory file"

        # If it is neither file nor directory
        else
            echo "$FILE is some otherfile"
        fi

        echo

        # Display long listing (permissions, size, owner, etc.)
        # If permission denied, show custom message instead of error
        echo "long listing"
        ls -l "$FILE" 2>/dev/null || echo "permission denied"

    else
        # If file/directory does not exist
        echo "$FILE doesnt exist"
    fi

done
