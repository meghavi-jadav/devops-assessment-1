#!/bin/bash

<<task 
Deploy an app 
and handle the code for errors
task

code_clone(){
    echo "Cloning the React app..."
    git clone https://github.com/meghavi-jadav/User-Management-CRUD.git
}

install_requirements(){
    echo "Installing dependencies"
    npm install # Add commands here if you need to install more dependencies
}

required_restarts(){
    # Add required restarts here if you are using something like docker
}

deploy(){
    npm run start
}

echo "-------------deployment started---------------"
code_clone
install_requirements
required_restarts
deploy
echo "---------------deployment complete---------------"




