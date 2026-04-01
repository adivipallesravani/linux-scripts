#!/bin/bash

# Initialize counter
count=1

# Read /etc/passwd line by line
while IFS= read -r line
do
    echo "$count: $line"
    ((count++))
done < /etc/passwd
