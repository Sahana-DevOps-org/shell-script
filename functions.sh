#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with rootuser access"
    exit 1
fi
VALIDATE (
    if [ $1 -ne 0 ]; then
        echo "installing $2 failure"
        exit 1
    else 
        echo "installing $2 is success"
    fi
)
echo "installing nginx"
dnf install nginx -y
VALIDATE $? "Installing nginx"
dnf install mysql -y
VALIDATE $? "Installing mysql"