#!/bin/bash
function cmp(){
	if [[ $1 < $2 ]]; then
		echo "$1 is lesser"
	elif [[ $1 > $2 ]]; then
		echo "$1 is greater"
	else
		echo "Both are same"
	fi
}

cmp $1 $2
