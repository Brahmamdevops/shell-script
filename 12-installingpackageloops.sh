#1/bin/bash

ID=(id -u)

echo " $0 is started"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

validate(){
    if [ $1 -ne 0 ]
    then
        echo : -e " $R installing $2 error $N"
    else
        echo : -e " $G installing $2 success $N"
    fi
}


if [ $ID -ne 0 ]
then
    echo : -e " $R please install with root user $N"
    exit 1
else
    echo : "you are root user"
fi


for i in $@
do
    echo " installing $i" &>> $LOGFILE
    validate $? "$i"
done


