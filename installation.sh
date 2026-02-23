#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with rootuser access"
    exit 1
fi

echo "installing nginx"
dnf install nginx -y
if [ $? -ne 0 ]; then
    echo "installing nginx failure"
    exit 1
else 
    echo "installing nginx is sucess"
fi

dnf install MySQL -y
f [ $? -ne 0 ]; then
    echo "installing MySQL failure"
    exit 1
else 
    echo "installing MySQL is sucess"
fi