#!/bin/bash

read -p "Input value " ip

if [[ $ip =~ ^[0-9]*$ ]];
then
	echo "Integer"
elif [[ $ip =~ ^[0-9]*\.[0-9]*$ ]];
then
	echo "Floating point"
else
	echo "String"
fi

