#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]
    then 
        echo : "please install with root user"
    else
        echo : "i am root user installing package"
fi

yum install mysql -y