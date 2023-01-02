#!/bin/bash

if [ $# != 2 ]; then
	echo "Usage: $0 <writefile> <writestr>"
	exit 1
fi

writefile=$1
writestr=$2

# Create the target directory if needed.
writedir=$(dirname "$writefile")
if [ ! -d "$writedir" ]; then
	mkdir -p "$writedir"
	if [ $? != 0 ]; then
		print "Error creating directory '$writedir'"
		exit 1
	fi
fi

# Create the file.
echo "$writestr" > "$writefile"
if [ $? != 0 ]; then
	print "Error creating file '$writefile'"
	exit 1
fi 

