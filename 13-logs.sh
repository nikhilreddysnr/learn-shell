#!/bin/bash

logs_Folder="/var/log/shell-practice"
log_File="${logs_Folder}/${0}.log"
userId=$(id -u)

if [ $userId -ne 0 ]; then
    echo "Please execute this command with root user or sudo"
    exit 1
fi

echo "Proceeding...."

mkdir -p logs_Folder

validate()
{
    if [ $1 -ne 0 ]; then
        echo "$2 Failed" | tee -a $log_File
        exit 1
    else
        echo "$2 is Success" | tee -a $log_File
    fi
}

dnf install nginx -y &>>$log_File
validate $? "Nginx Installation"

echo "Still Proceeding"


dnf install mysql -y &>>$log_File
validate $? "MySQL Installation"


echo "Completed Execution".