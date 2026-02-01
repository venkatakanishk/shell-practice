#!/bin/bash
fruits=("Apple" "Grapes" "Banana")

echo "fruits are ${fruits[@]}"
echo "fruit is ${fruits[0]}"
echo "fruits are ${fruits[@]:1:2}"
