#!/bin/bash

shopt -s nullglob

DATE=$(date +%F)
echo "$DATE"
for FILE in *.jpg
do
	echo "renaming $FILE to $DATE-$FILE"
	mv $FILE $DATE$FILE
done


