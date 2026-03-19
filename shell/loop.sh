#!/bin/bash

read word
while [ "$word" != 'stop' ]
do
	echo "You typed $word"
	read word
done
