#!/bin/bash

echo  "Enter two numbers "
read a b

select word in "Add" "Subtract" "Multiply" "Divide"

do
	if [[ $word == "Add" ]];
	then
		let sum=$a+$b
		echo "Sum is " $sum
	elif [[ $word == "Subtract" ]];
	then
		let diff=$a-$b
		echo "Difference is " $diff
	elif [[ $word == "Multiply" ]];
	then
		let pdt=$a*$b
		echo "Product is " $pdt
	else
		let quot=$a/$b
		echo "Quotient is " $quot
	fi
done

