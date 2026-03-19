#!/bin/bash

echo "File name: $0"
echo "First arg: $1"
echo "Second arg: $2"
echo "Total args: $#"
echo "All args: $@"


echo $?
: <<'COMMENT'
echo $HOME
echo $PATH
echo $USER
echo $PWD
echo $SHELL
COMMENT
