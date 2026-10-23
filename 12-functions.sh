#!/bin/bash

userId=$(id -u)

if [ $userId -ne 0 ]; then
    echo "Please execute this command with root user or sudo"
    exit 1
fi

echo "Proceeding...."


validate()
{
    if [ $1 -ne 0 ]; then
    echo "$2 is Success"
    exit 1
    else
        echo "$2 Failed"
    fi
}

dnf install nginx -y
validate $? "Nginx Installation"

echo "Still Proceeding"


dnf install mysql -y
validate $? "MySQL Installation"


echo "Completed Execution".