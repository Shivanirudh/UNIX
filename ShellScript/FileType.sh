#!/bin/bash
echo "Choose extension "
select i in .txt .sh .c '.*';

do 
	let f=0
	for file in *
	do
		if [[ $file == *$i ]]
		then
			let f=$f+1
		fi
	done
	echo "Number of $i files is " $f
done

