#!/bin/bash


ID=$(id -u)

validate(){
if [ $1 -ne 0 ]
then
    echo : "installing $2  failure"
else
    echo : "istalling $2  success"
fi
}

if [ $ID -ne 0 ]
then 
    echo : "please install with root user"
    exit 1
else
    echo : "i am root user installing package"
fi

yum install mysql -y

validate $? "mysql"

yum install git -y

validate $? "git"





