#!/bin/bash

touch mycron
echo "0 0 * * * cat /etc/passwd | cut -d ":" -f 1,3 >> ~/backup/`date +%Y%m%d`.log" > mycron
echo "0 0 * * * find ~/backup -name "*.log" -mtime +2 -exec rm -f {} \;" >> mycron
crontab mycron
rm -f mycron
