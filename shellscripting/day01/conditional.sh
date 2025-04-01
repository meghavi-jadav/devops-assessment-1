#!/bin/bash 

<< disclaimer
Here we are trying to learn about 
Conditional Statements in 
shell scripting 
disclaimer


#We are defining the function here

function can_drive(){
read -p "Enter your age: " age 

if [[ $age -ge 18 ]]; then 
	echo "You are eligible to drive"
else 
	echo "You are not eligible to drive"
fi
}

#This is a function call 

can_drive

