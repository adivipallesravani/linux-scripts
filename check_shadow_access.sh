#!/bin/bash

# Script: check_shadow_access.sh
# Description: Attempts to read /etc/shadow and checks whether the command
#              executed successfully using exit status.
# Usage: ./script.sh

# Try to display contents of /etc/shadow (requires root privileges)
cat /etc/shadow

# Check exit status of the previous command (cat)
# $? stores exit code of last executed command
if [ $? -eq 0 ]
then 
    # Exit status 0 means success
    echo "command succeed"
    exit 0
else
    # Non-zero exit status means failure (e.g., permission denied)
    echo "doesnt succeed"
    exit 1
fi
