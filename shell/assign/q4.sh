#!/bin/sh
PI=3.142

echo "Enter a radius of circle:"
read radius

area=$(echo "$PI * $radius * $radius" | bc)
circum=$(echo "2 * $PI * $radius" | bc)

echo "Area: $area"
echo "Circumference: $circum"
