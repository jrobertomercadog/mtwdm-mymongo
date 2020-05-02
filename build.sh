#!/bin/bash
mongod --noauth &> /dev/null &
sleep 11
cd /tmp/mymongo/mtwdm-mymongo 
mongo admin adminstuff.js 
mongo mtwdm dboperator.js 
mongo mtwdm mydata.js
kill $(pidof mongod)
exit 0
