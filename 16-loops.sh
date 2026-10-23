#!/bin/bash

logs_Folder="/var/log/shell-practice"
log_File="${logs_Folder}/${0}.log"
userId=$(id -u)

if [ $userId -ne 0 ]; then
    echo "Please execute this command with root user or sudo"
    exit 1
fi

echo "Proceeding...."

mkdir -p $logs_Folder

validate()
{
    if [ $1 -ne 0 ]; then
        echo "$2 Failed" | tee -a $log_File
        exit 1
    else
        echo "$2 is Success" | tee -a $log_File
    fi
}


for package in $@
do
    dnf installed ${package}
    if[ $? -ne 0 ]; then
        echo "Installing ${package}"
        dnf install ${package} -y &>>$log_File
        validate $? "Installing ${package}"
    else 
        echo "${package} already installed... So Skipping ${package} installation"
    fi 
done
