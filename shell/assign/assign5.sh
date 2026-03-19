#!/bin/bash

echo "Enter file name:"
read file

case $file in
    *.zip) unzip $file ;;
    *.tar) tar -xvf $file ;;
    *.tar.gz) tar -xvzf $file ;;
    *.gz) gunzip $file ;;
    *.bz2) bunzip2 $file ;;
    *.rar) unrar x $file ;;
    *.7z) 7z x $file ;;
    *) echo "Format not supported" ;;
esac
