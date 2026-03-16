#!/bin/bash
FILE="$1"
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
	echo
	echo "long listing"
	ls -l $FILE
fi
else
	echo "$FILE doesnt exist"
fi
