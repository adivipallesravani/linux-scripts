#!/bin/bash

FILE="$1"

if [ -e $FILE ] 
then
	echo "file exists"
	if [ -f $FILE ]
	then
		echo "it is a regular file"
		exit 0
	elif [ -d $FILE ]
	then 
		echo "it is a directory"
		exit 1
	else
		echo "some other file"
		exit 2
	fi
else
	echo "file doesnt exist"
        exit 3
fi
