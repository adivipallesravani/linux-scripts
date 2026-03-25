#!/bin/bash

# Script: directory_count.sh
# Description: Accepts a directory as input, checks if it is valid,
#              and counts the number of entries inside it.
# Usage: ./script.sh

# Function to count files in a given directory
function file_count() {

    # Store input argument (directory path)
    local FILE="$1"

    # Check if input is NOT a directory
    if  [ ! -d "$FILE" ]; then
        echo " $FILE isnt dir"
        return   # Exit function without stopping entire script
    fi

    # Count number of entries in the directory
    # ls -1 lists items line by line, wc -l counts them
    local COUNT=$(ls -1 "$FILE"| wc -l)

    # Print directory name and count
    echo "$FILE:"
    echo "$COUNT"
}

# Call function with different directories
file_count /etc
file_count /var
file_count /usr/bin

# This will trigger error message (not a directory)
file_count emo
