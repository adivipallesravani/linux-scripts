#!/bin/bash

if [ $# -eq 0 ]
then
	echo "please pass atleast an argument"
fi
for FILE in "$@";do
if [ -e $FILE ]
then
	if [ -f $FILE ]
	then 
		echo " $FILE is regular file"
	elif [ -d $FILE ]
	then 
		echo "$FILE is directory file"
	else
		echo "$FILE is some otherfile"
	fi
		echo

	echo "long listing"
	ls -l $FILE

else
	echo "$FILE doesnt exist"
fi
done
