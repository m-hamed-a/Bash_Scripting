#!/bin/bash

for ((i=1;i<=20;i++));do
    read -p "Please enter $i th number: " VAR1
    if [ $i -eq 1 ];then
        MAX=$VAR1
        MIN=$VAR1
    elif [ $VAR1 -ge $MAX ];then
        MAX=$VAR1
    elif [ $VAR1 -le $MIN ];then
        MIN=$VAR1
    fi
done

echo "Max= $MAX"
echo "Min= $MIN"
