#!/bin/bash

a=2
b=3
echo `expr $a + $b`
if [ $a -gt 10 ]
then 
	echo "Greater than 10"
else 
	echo "10 or less"
fi

