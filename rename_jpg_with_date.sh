#!/bin/bash

# Script: rename_jpg_with_date.sh
# Description: Renames all .jpg files in the current directory by
#              prefixing them with the current date.
# Usage: ./script.sh

# Enable nullglob:
# If no .jpg files exist, the pattern *.jpg expands to nothing (avoids errors)
shopt -s nullglob

# Get current date in YYYY-MM-DD format
DATE=$(date +%F)

# Print the date being used as prefix
echo "$DATE"

# Loop through all .jpg files in current directory
for FILE in *.jpg
do
    # Display rename operation
    echo "renaming $FILE to $DATE-$FILE"

    # Rename file by prefixing date
    mv $FILE $DATE$FILE
done
