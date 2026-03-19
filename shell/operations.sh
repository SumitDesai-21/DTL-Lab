#!/bin/bash
a=10
b=20

echo $(expr $a + $b)
echo $(expr $a - $b)
echo $(expr $a \* $b)
echo $(expr $a / $b)
echo $(expr $a % $b)

if [ $a -eq $b ]; then
	echo "a is equal to b"
else 
	echo "a is not equal to b"
fi

# -o means or we can also use ||
if [ $a -lt 20 -o $b -gt 100 ]; then
	echo "at least one condition is true"
fi

# -a means and (both must be true) can also use &&
if [ $a -lt 20 -a $b -gt 10 ]; then 
	echo "both conditions are true"
fi



