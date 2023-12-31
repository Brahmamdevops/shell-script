#!/bin/bash


ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"



R="\e[31m"
G="\e[32m"
N="\e[0m"

validate(){
    if [ $1 -ne 0 ]
    then
        echo :-e " $R installing $2 failure $N"
    else
        echo : -e " $G installing $2 success $N "

    fi
}

if [ $ID -ne 0 ]
then
    echo : -e " $R please intsall with root user"
    exit 1
else 
    echo : -e " $G your are root user"
fi
yum install mysql -y &>> $LOGFILE # log data saved in this file

validate $? "mysql" # $? its save the exit command status 

yum install git -y &>> $LOGFILE

validate $? "git"
