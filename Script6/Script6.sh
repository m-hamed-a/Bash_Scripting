#!/bin/bash

echo "figlet Hello \$USER !" >> ~/.bashrc
echo "DATE=\`date +%Y/%m/%d\`" >> ~/.bashrc
echo "echo \"Date: \$DATE\"" >> ~/.bashrc
echo "LUSER=\`who | wc -l\`" >> ~/.bashrc
echo "echo \"Number of logged in users: \$LUSER\"" >> ~/.bashrc
