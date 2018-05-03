#!/bin/bash
cd /cron-log
path=/cron-log
find=`find $path/ -name *.log` > name.log
for name in $(cat name.log)
do
	zip -r $name.zip $name && echo > $name
done
rm -rf name .log
