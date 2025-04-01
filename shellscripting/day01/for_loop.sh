#!/bin/bash

#This is an example of a for loop

<<Method1 

for (( num=1 ; num<=5 ; num++ ));
do 
	echo "Printing this $num/5 times"
done
Method1

<< task 
$1 is argument start range
$2 is end of the range
task

for (( num =$1; num <=$2; num++ ));
do
	echo "Printing this $num/$2 times"
done


