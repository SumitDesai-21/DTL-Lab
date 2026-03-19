#!/bin/sh
: << 'COMMENT'
a=20

until [ $a -lt 10 ]
do
	echo $a
	a=$((a-1))
done
COMMENT

# for loop
for i in {1..5}
do
	echo $i
done
