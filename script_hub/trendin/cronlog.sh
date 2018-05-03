#!/bin/bash
cd /data/trendin_logs
find /data/trendin_logs/ -name error.log > test.txt
for name in $(cat test.txt)
do
	if [ $name -ge 10000  ]
	then
		cp $name /home/c2s/vishnu
	else
		exit

	
