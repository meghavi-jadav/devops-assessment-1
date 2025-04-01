#!/bin/bash

num=1

while [[ $num -le 5 ]]
do
	echo "Printing this $num/5 times"
	num=$((num+1))
done
