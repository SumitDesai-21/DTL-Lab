#!/bin/bash

echo "Enter file name:"
read file

if [ ! -f "$file" ]; then
    echo "File not found"
    exit 1
fi

case "$file" in
    *.tar|*.tar.gz|*.tgz|*.tar.bz2|*.tbz2)
        tar -xf "$file"
        ;;
    *.zip)
        unzip "$file"
        ;;
    *.gz)
        gunzip "$file"
        ;;
    *.bz2)
        bunzip2 "$file"
        ;;
    *.rar)
        unrar x "$file"
        ;;
    *.7z)
        7z x "$file"
        ;;
    *.Z)
        uncompress "$file"
        ;;
    *)
        echo "Unsupported format"
        ;;
esac
