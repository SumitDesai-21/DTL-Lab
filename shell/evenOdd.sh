#!/bin/bash
read ip
while [ $ip -gt 0 ]
do
	if [ $(($ip & 1)) -eq 0 ]; then
		echo "$ip is even"
	else 
		echo "$ip is odd"
	fi
	ip=$((ip-1))
done
