#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]
    then 
        echo : "please install with root user"
        exit 1
    else
        echo : "i am root user installing package"
fi

yum install mysql -y


if [ $? -ne 0 ]
    then
        echo : "installing package failure"
    else
        echo : "istalling package success"
fi
