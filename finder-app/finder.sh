#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z $filesdir ] || [ -z $searchstr ]
then
	echo "filesdir and searchstr should be provided as args"
	exit 1
fi

if [ ! -d $filesdir ]
then
	echo "filesdir is not a directory"
	exit 1
fi

x=$(find $filesdir -type f | wc -l)
y=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $x and the number of matching lines are $y"
