#!/bin/bash

userId=$(id -u)

if [ $userId -ne 0 ]; then
    echo "Please execute this command with root user or sudo"
fi

echo "Proceeding...."

dnf install nginx -y
