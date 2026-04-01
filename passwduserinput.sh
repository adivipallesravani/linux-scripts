#!/bin/bash

# Ask user for number of lines
read -p "How many lines of /etc/passwd would you like to see? " num

# Display lines
head -n "$num" /etc/passwd
