
#/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run th4e script with root user access"
    exit 1
fi
VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "$2 is failure"
        exit 1
    else 
        echo "$2 is success"
    fi
}

dnf install nodejs -y
VALIDATE $? "installing nodejs"

dnf install mytehdf -y
VALIDATE $? "installing mysql"
