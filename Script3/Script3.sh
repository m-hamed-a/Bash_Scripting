#!/bin/bash

for ((i=1;i<=4;i++));do
	VAR=`echo "$1" | cut -d "." -f $i`
	if [ $VAR -gt 255 ] || [ $VAR -lt 0 ];then
		echo "IP format is not correctly!"
		exit
	fi
done

ping -c 1 $1 > /dev/null

if [ $? -eq 0 ];then
	sshpass -p $3 scp /etc/passwd $2@$1:~/tes
else
	echo "Server is not accessible!"
fi
