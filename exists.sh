#!/bin/bash
if [ -e /etc/shadow ]
then
	echo "shadow passwords are enabled"


if [ -w /etc/shadow ]
then
 
	echo "u have permissions to edit /etc/shadow"
else 
	echo "dont have perm"
fi
fi
