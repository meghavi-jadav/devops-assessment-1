#!/bin/bash

#In this example we are unable to handle it well
<<Example
create_directory(){
	mkdir demo
}

create_directory

echo "This should not work because the code is interrupted"
Example


create_directory(){
	mkdir demo
}

if ! create_directory; then 
	echo "The directory with the same name already exists"
	exit 1
fi

echo "Interrupted"



