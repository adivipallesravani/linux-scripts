#!/bin/bash

function file_count(){
	COUNT=$(ls -1 | wc -l )
echo "no.of files in pwd is:$COUNT"
}

file_count
