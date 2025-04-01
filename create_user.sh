#!/bin/bash


#Prompt that asks for username
echo -n "Enter new username: "
read username 

#Check to see if the username already exists
if id "$username" &>/dev/null; then 
    echo "User '$username' already exists."
    exit 1 
fi

#Prompt that asks for Password
echo -n "Enter password for $username: "
read -s password
echo

echo -n "Confirm Password: "
read -s password_toconfirm
echo

#Confirming if the passwords match
if [ "$password" != "$password_toconfirm" ]; then 
    echo "Passwords do not match"
    echo "Exiting...."
    echo 
    exit 1
fi

#Now we will create the user and set the password
sudo useradd -m -s /bin/bash "$username"
echo "$username:$password" | sudo chpasswd

echo "User '$username' has been created successfully"