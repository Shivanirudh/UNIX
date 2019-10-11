#!/bin/bash

f=$1
tmp="tmp.txt"
select option in "List" "Search" "Modify rate" "Modify hours" "Delete" "Exit";
do
	if [[ $option == "Exit" ]];
	then
		break
	elif [[ $option == "List" ]];
	then
		cat $f
	elif [[ $option == "Search" ]];
	then 
		read -p "Enter name" name
		grep $name $f
	elif [[ $option == "Modify rate" ]]
	then
		read -p "Enter name and new rate " name rate
		awk -v n="$name" -v r="$rate" '{if($1 ~ n)$2=r;print $0}' $f > $tmp
	elif [[ $option == "Modify hours" ]]
	then
		read -p "Enter name and new hours " name hours
		awk -v n="$name" -v h="$hours" '{if($1 ~ n)$3=h;print $0}' $f > $tmp
	elif [[ $option == "Delete" ]];
	then
		read -p "Enter name to delete" name
		cat $f|awk -v n="$name" '{if($1 !~ n)print $0}' > $tmp
	fi
done
cp $tmp $f
cat $f

