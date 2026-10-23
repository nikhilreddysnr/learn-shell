#!/bin/bash

userId=$(id -u)

if [ $userId -ne 0 ]; then
    echo "Please execute this command with root user or sudo"
    exit 1
fi

echo "Proceeding...."

dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Error in installing nginx"
    exit 1
else
    echo "Nginx installed successfully"
fi
echo "Still Proceeding"


dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Error in installing mysql"
    exit 1
else
    echo "Mysql installed successfully"
fi  

echo "Still Proceeded".