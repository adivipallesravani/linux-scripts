#!/bin/bash

# Script: rename_by_extension.sh
# Description: Renames all files with a given extension by adding a prefix
#              (default: current date) to each filename.
# Usage: Run script and provide extension and optional prefix

# Take file extension input (e.g., txt, log)
read -p "enter extension:" EXT

# Get current date in YYYY-MM-DD format
DATE=$(date +%F)

# Ask user for prefix, default is today's date
read -p "enter prefix(press enter for $DATE):" PREFIX

# If no prefix provided, use DATE
if [ -z "$PREFIX" ]
then
    PREFIX="$DATE"
fi

# Enable nullglob:
# If no matching files, pattern expands to empty instead of literal string
shopt -s nullglob

# Create array of files matching the extension
files=(*."$EXT")

# Check if no files found
if [ ${#files[@]} -eq 0 ]
then
    echo "no .$EXT file found"
    exit 0
fi

# Loop through each file
for file in "${files[@]}"
do
    # Create new filename with prefix
    newname="$PREFIX"-"$file"

    # Display rename action
    echo "renaming $file to $newname"

    # Rename file
    mv $file $newname
done
