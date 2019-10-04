#!/bin/bash

read -p "Enter password " pw

if [[ $pw =~ [0-9]+ && $pw =~ [a-z]+ && $pw =~ [A-Z]+ && $pw =~ ^[A-Za-z0-9]{8,} ]];
then
	echo "Strong password "
else
	echo "Weak password "
fi


