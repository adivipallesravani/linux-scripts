#!/bin/bash

# Script: hostname_display.sh
# Description: Stores and prints system hostname using command substitution

VARIABLE="shell scripting is fun"

# Store hostname using command substitution
STORING_HOSTNAME=$(hostname)

# Print hostname
echo "${STORING_HOSTNAME}"

# Print descriptive message
echo "The script is running on ${STORING_HOSTNAME}, where \"sravani\" is the output of the \"hostname\" command"
