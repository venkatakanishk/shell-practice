#!/bin/bash
num=$1
if [ $num -gt 25 ]; then
    echo "given number: $num is greater than 25"
elif [ $num -eq 25 ]; then
      echo "given number: $num is equal to 25"
else
    echo "given number: $num is less than 20"
fi