#!/bin/bash
read -p "Enter number" num
echo "Original: " $num

let t=0
while [ $num -gt 0 ]
do
	let t*=10
	let t+=$num%10
	let num=$num/10
done

echo "Reverse: " $t

