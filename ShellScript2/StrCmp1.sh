#!/bin/bash

cmp(){
	if [[ $1 > $2 ]];
	then
		return 2
	elif [[ $1 < $2 ]];
	then
		return 1
	else
		return 0
	fi
}

val=`cmp $1 $2`;

#val = $?

if [ $val -eq "2" ];
then
	echo "$1 comes after $2"
elif [ $val -eq "1" ];
then
	echo "$1 comes before $2"
else
	echo "Both are same"
fi


