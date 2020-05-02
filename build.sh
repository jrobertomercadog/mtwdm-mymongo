#!/bin/bash
mongod --noauth &> /dev/null &
cd /tmp/mymongo/mtwdm-mymongo 
mongo admin adminstuff.js 
mongo mtwdm dboperator.js 
mongo mtwdm mydata.js
kill $(pidof mongod)
exit 0
