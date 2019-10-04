#!/bin/bash

file=$1
word=$2
count=$(grep -c $word $file)


echo "Number of occurences: " $count

