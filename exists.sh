#!/bin/bash
 
FILE="/etc/shadow"

if [ ! -e "$FILE" ]
then
	echo "$FILE doesnt exist"
        exit 1
fi

echo "$FILE exists"

if [ -w "$FILE" ]
then
 
	echo "u have permissions to edit /etc/shadow"
else
	echo "dont have perm"
fi
