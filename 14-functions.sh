
#/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run th4e script with root user access"
    exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Nginx installation is failure"
else
    echo "Nginx installation is success"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Mysql installation is failure"
else
    echob "Mysql installation is success"
fi
