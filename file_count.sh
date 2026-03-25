#!/bin/bash

# Script: file_count.sh
# Description: Counts the number of entries (files/directories) in the current directory
#              and prints the total count.
# Usage: ./script.sh

# Define a function to count files
function file_count(){

    # Use ls to list entries (one per line) and wc -l to count them
    COUNT=$(ls -1 | wc -l )

    # Display the count
    echo "no.of files in pwd is:$COUNT"
}

# Call the function
file_count
