#!/bin/bash
echo " All variables passed to the script : $@ "
echo " NO of variables passed to the script : $# "
echo " script name : $0 "
echo " present which dir you are in : $PWD "
echo " Who is running the script  $USER "
echo " Home dir of the current user  $HOME "
echo " PID of the script :$$ "
sleep 10 &
echo " Back ground process ID is : $! "
