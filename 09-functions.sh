#!/bin/bash

ID=$(id -u)

validate(){
    if[ $1 -ne 0 ]
    then
        echo : "installing $2 failure"
    else
        echo : " installing $2 success"
}
fi

if[ $ID -ne 0 ]
then
    echo : "please intsall with root user"
    exit 1
else 
    echo : "your are root user"

yum install mysql -y 

vadilate $? "mysql" # $? its save the exit command status 

yum istall git -y

vadilate $? "git"