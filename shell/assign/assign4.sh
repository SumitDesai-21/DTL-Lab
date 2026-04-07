#!/bin/sh
sum=0
count=0
flag=0

while [ $flag -eq 0 ]
do	
	echo "Do you want to enter a number (0 means yes /1 means false)?"
	read cont

	if [ $cont -eq 0 ]; then
		echo "Enter a number:"	
		read num

		# validate number
		if echo "$num" | grep -Eq '^-?[0-9]+$'; then
			sum=$((sum + num))
			count=$((count + 1))
		else
			echo "Invalid number, not counted"
		fi
	else
		break
	fi
done

echo "sum: $sum"
echo "count: $count"
if [ $count -ne 0 ]; then
	echo "avg: $(echo "scale=2; $sum / $count" | bc)"
else
	echo "avg: 0"
fi
