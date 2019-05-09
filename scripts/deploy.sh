#!/bin/sh
ssh tqs@192.168.160.56 <<EOF
 cd ~/pi_cicd
 git pull
 npm install — production
 node index.js
 exit
EOF