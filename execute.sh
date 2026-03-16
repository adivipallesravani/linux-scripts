#!/bin/bash

cat /etc/shadow

if [ $? -eq 0 ]
then 
	echo "command succeed"
	exit 0
else
	echo "doesnt succeed"
	exit 1
fi
