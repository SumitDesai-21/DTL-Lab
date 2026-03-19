#! /bin/bash
echo "Enter a cost price: "
read cost_price
echo "Enter a selling price: "
read selling_price
if [ $selling_price -gt $cost_price ] 
then
	echo "Profit: `expr $selling_price - $cost_price`"
else
	echo "loss: `expr $cost_price - $selling_price`"
fi

