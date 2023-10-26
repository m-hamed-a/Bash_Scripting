#!/bin/bash

while IFS= read -r line;do
	DATE=`date +%Y%m%d`
	HOSTNAME=`dig -x $line +short`
	ping -c 5 $line > ${DATE}_${HOSTNAME}.log
done < "$1"
