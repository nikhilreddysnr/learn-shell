#!/bin/bash

set -e 
logs_Folder="/var/log/shell-practice"
log_File="${logs_Folder}/${0}.log"
userId=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

trap 'echo "Error at Line $LINENO", command:"$BASH_COMMAND"' ERR
if [ $userId -ne 0 ]; then
    echo "Please execute this command with root user or sudo"
    exit 1
fi

echo -e "${Y}Proceeding${N}...."

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
    dnf list installed  ${package} &>>$log_File
    if [ $? -ne 0 ]; then
        echo "Installing ${package}"
        dnf install ${package} -y &>>$log_File
        validate $? "Installing ${package}"
    else 
        echo -e "${package} already installed... So Skipping ${Y}${package} ${N} installation"
    fi 
done
