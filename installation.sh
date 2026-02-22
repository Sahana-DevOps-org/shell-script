#!/bin/bash
USERID=$(id -u)

if [ $USERID -nq 0 ]; then
    echo "Please run this script with rootuser access"
    exit 1
fi

echo "installing ngnix"
dnf install ngnix -y