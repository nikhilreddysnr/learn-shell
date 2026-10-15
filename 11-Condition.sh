#!/bin/bash

userId=$(id -u)

if [ $userId -ne 0 ]; then
    echo "Please execute this command with root user or sudo"
    exit 1
fi

echo "Proceeding...."

dnf install nginxxxx -y

echo "Still Proceeding"


dnf install mysqllll -y