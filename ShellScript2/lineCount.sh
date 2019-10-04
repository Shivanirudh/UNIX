#!/bin/bash

function count(){
	echo $(wc -l < $1)
}

count $1

