#!/bin/bash

# Script: for_loop_example.sh
# Description: Demonstrates how a for loop iterates over a list of values
#              stored in a variable.
# Usage: ./script.sh

# Define a variable with space-separated values
VAR_S="1 2 3"

# Loop through each value in VAR_S
# Bash splits the string based on spaces (word splitting)
for i in $VAR_S
do
    # Print each value one by one
    echo "$i"
done

# NOTE:
# If we use: for i in "$VAR_S"
# Then the loop will treat "1 2 3" as a single value
# and run only once.
