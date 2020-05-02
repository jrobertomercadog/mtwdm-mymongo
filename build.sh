#!/bin/bash

trap "echo TRAPed signal" HUP INT QUIT TERM

mongod --port 28017 --bind_ip_all --auth &

FILE=/data/db/ready
if [[ ! -f "$FILE" ]]; then
    sleep 11
    cd /tmp/mymongo/mtwdm-mymongo 
    mongo --port 28017 admin adminstuff.js 
    mongo --username=dba-root --password=whateverman --authenticationDatabase admin --host 127.0.0.1 --port 28017 dboperator.js 
    mongo --username=dba-root --password=whateverman --authenticationDatabase admin --host 127.0.0.1 --port 28017 mydata.js
    touch /data/db/ready
fi
echo "[hit enter key to exit] or run docker stop <container>"
read
exit 0
