#!/bin/bash



if [ "$#" -ne 2 ]; then
    echo "You must enter exactly 2 command line arguments"
    exit 1
fi
if test -e "$1"
then
 file1=`wc -c < $1`
else
    echo "File 1 Not Found"
    exit 1
fi

if test -e "$2"
then
 file2=`wc -c < $2`
else
    echo "File 2 Not Found"
    exit 1
fi

if [ "$file1" == "$file2" ]
then
	echo "Files are similar"
else
	echo "Files are different"
fi

