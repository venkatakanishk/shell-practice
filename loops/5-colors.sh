#!/bin/bash
USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "$R please run the script with root user access $N" | tee -a $LOG_FILE
    exit 1
fi
mkdir -p $LOG_FOLDER

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo -e "$2 ....$R is failure $N" | tee -a $LOG_FILE
        exit 1
    else 
        echo -e "$2 ....$G is success $N" | tee -a $LOG_FILE
    fi
}

for package in $@
do
    dnf list installed $package  &>> $LOG_FILE
    if [ $? -ne 0 ]; then
        echo -e "$package $R not installed, installing now $N"
        dnf install $package -y &>> $LOG_FILE
        VALIDATE $? "$package installation"  
    else
        echo -e "$G $package alreayd installed, $Y skipping installation $N"
    fi             
done