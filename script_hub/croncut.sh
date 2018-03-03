#!/bin/bash
echo -n "Enter the cron : "
read cron
find=`cat /data/trendin/cron/root | grep "$cron"`
cut=`echo "$find" | sed 's/.*>>//'`
echo "$cut"
