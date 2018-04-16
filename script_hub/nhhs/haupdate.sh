#!/bin/bash
#echo -n "Enter app : "
#read app
#date=`date +%d%B%Y_%T`

if [ -d "/home/c2s/ha_backup" ]
then
	        echo "Directory Found [  OK  ]"
	else	
		        mkdir /home/c2s/ha_backup
			        echo "Directory Created [  OK  ]"
			fi

			rm -rf /home/c2s/ha_backup/*
			cp /etc/haproxy/haproxy.cfg /home/c2s/ha_backup/haproxy.cfg_$(date +%d%B%Y_%T)_backup
			currentstat=`grep -w "use_backend.*if $app" /etc/haproxy/haproxy.cfg`
			find /etc/haproxy/haproxy.cfg -type f -exec sed -i "s/$currentstat/use_backend $status if $app/g" {} \;
			haproxy -c -V -f /etc/haproxy/haproxy.cfg
			status=$(echo "$?")
			if [ $status != 0 ]
			then
					echo "Something Went Wrong! [  Error  ]"
				else
					/etc/init.d/haproxy restart
					        echo "Successfully restarted [  OK  ]"
					fi
					lateststat=`grep -w "use_backend.*if $app" /etc/haproxy/haproxy.cfg`
					echo "Current status of $app :  $lateststat ---> [  OK  ]"

