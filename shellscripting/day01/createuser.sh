#!/bin/bash

read -p "Enter Username: " username

echo "Hi, $username"

sudo useradd -m $username

echo "New user added"


