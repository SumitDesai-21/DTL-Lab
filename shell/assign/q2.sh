#!/bin/sh
read number

if [ $number -le 1 ]
then
    echo "Neither prime nor composite"
    exit
fi

it=2
prime=1
square=`expr $it \* $it`

while [ $square -le $number ]
do
    if [ `expr $number % $it` -eq 0 ]
    then
        echo "Not prime"
        exit
    fi
    it=`expr $it + 1`
    square=`expr $it \* $it`
done

echo "Prime"
