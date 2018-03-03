#!/bin/bash
#echo -n "Enter the cron : "
#read cron
#find=`cat /data/trendin/cron/root | grep "$cron"`
#cut=`echo "$find" | sed 's/.*>>//'`
#echo "$cut"

echo -n "Enter the cron : "
read cron
find=`cat /data/trendin/cron/root | grep "$cron"`
cut=`echo "$find" | sed 's/.*>>//'`
echo ""
echo "$find"
echo "Log is in this path : $cut"
