#!/bin/bash
let FCtr=0
let SDCtr=0

read -p "Choose directory " num

for i in $num/*
do
	if [ -d $i ]
	 then
		let SDCtr=$SDCtr+1
	else
		let FCtr=$FCtr+1
	fi
done

echo " Number of files " $FCtr
echo " Number of sub directories " $SDCtr


