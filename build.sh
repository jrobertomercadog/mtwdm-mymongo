#!/bin/bash
FILE=/data/db/ready
if [[ -f "$FILE" ]]; then
    exit 0
fi

sleep 11
cd /tmp/mymongo/mtwdm-mymongo 
mongo admin adminstuff.js 
mongo --username=dba-root --password=whateverman --authenticationDatabase admin --host 127.0.0.1 --port 27017 dboperator.js 
mongo --username=dba-root --password=whateverman --authenticationDatabase admin --host 127.0.0.1 --port 27017 mydata.js
touch /data/db/ready
exit 0
