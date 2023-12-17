#!/bin/bash


ID=$(id -u)

if [ $ID -eq 0 ]
    then 
        echo : "i am root user installing package"
    else
        echo : "please install with root user"

fi