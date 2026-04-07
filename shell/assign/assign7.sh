# Assignment 7: Write a shell program to sort all files stored in a given folder hierarchy, on their size.

#!/bin/bash

# edge case: check if directory is provided or not
if [[ -z "$1" ]]; then
	echo "please provide directory in argument."
    exit 1
fi

dir="$1" # store provided directory in dir

# check if directory exists
# if it doesn't exists
if [[ ! -d "$dir" ]]; then
    echo "Error: Directory does not exist"
    exit 1
fi

# if it exists
# finds all files in directory & sort them according to their sizes
find "$dir" -type f -exec du -h {} + | sort -h
