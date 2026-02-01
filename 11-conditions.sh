#!/bin/bash
num=$1
if [ $num -gt 20 ]; then
    echo "given number: $num is greater than 20"
else
    echo "given number: $num is less than 20"
fi