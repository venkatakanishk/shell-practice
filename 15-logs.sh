
#/bin/bash
USERID=$(id -u)
LOG_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "please run th4e script with root user access"
    exit 1
fi
mkdir -p $LOG_FOLDER
VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "$2 is failure"
        exit 1
    else 
        echo "$2 is success"
    fi
}

dnf install nodejs -y &>> $LOG_FILE
VALIDATE $? "installing nodejs"

dnf install mytehdf -y &>> $LOG_FILE
VALIDATE $? "installing mysql"
