#!/bin/bash
 
# Script: check_shadow_permission.sh
# Description: Checks if /etc/shadow exists and verifies whether the user
#              has write permission on it.
# Usage: ./script.sh

# Define the file to check
FILE="/etc/shadow"

# Check if the file exists
if [ ! -e "$FILE" ]
then
    echo "$FILE doesnt exist"
    exit 1
fi

# If file exists, print confirmation
echo "$FILE exists"

# Check if the file is writable by the current user
if [ -w "$FILE" ]
then
 
    # If writable, user has permission to edit the file
    echo "u have permissions to edit /etc/shadow"
else
    # If not writable, user does not have permission
    echo "dont have perm"
fi
