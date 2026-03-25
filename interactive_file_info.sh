#!/bin/bash

# Script: interactive_file_info.sh
# Description: Prompts user for a filename, checks if it exists,
#              identifies its type, and displays detailed information.
# Usage: Run the script and enter filename when prompted

# Take filename input from user
read -p "enter filename: " FILE

# Check if file/directory exists
if [ -e "$FILE" ]
then
    # Check if it is a regular file
    if [ -f "$FILE" ]
    then 
        echo " "$FILE" is regular file"

    # Check if it is a directory
    elif [ -d "$FILE" ]
    then 
        echo "$FILE is directory file"

    # If it is neither file nor directory
    else
        echo "$FILE is some otherfile"
    fi

    echo

    # Display detailed file information (permissions, owner, size, etc.)
    echo "long listing"
    ls -ld "$FILE"

else
    # If file/directory does not exist
    echo "$FILE doesnt exist"
fi
