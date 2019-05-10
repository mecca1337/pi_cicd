#!/bin/sh
ssh tqs@192.168.160.56 <<EOF
 cd ~/pi_cicd
 killall node
 git pull
 npm install 
 node index.js < /dev/null > /dev/null 2>&1 &
 exit
EOF