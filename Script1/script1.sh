#!/bin/bash

read -p "Please enter a number: " VAR1

if [ $VAR1 -gt 10 ];then
    echo " $VAR1 > 10"
elif [ $VAR1 -eq 10 ];then
    echo " $VAR1 = 10"
else
    echo " $VAR1 < 10"
fi
