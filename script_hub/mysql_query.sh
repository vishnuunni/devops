#!/bin/bash
killall screen
#OUTPUTLOG=/home/vishnu/devops_ansible/script_hub/log.log
#exec 1> ${OUTPUTLOG}
date=`date +%Y_%m_%d_%T`
echo ""
echo -n "Enter the db name : "
read dbname
echo "Selecting $dbname"
echo -n "Enter the query : "
read query
pwd=root

#------test------
screen -dmS query_$date
sleep 2
screen -r query_$date -X stuff $"mysql -u root -p'$pwd'\n"
sleep 1
#screen -r query -X stuff $"mysql -u root -p'$pwd' -D '$dbname' -e '$query';\n"
screen -r query_$date -X stuff $"use $dbname;\n"
sleep 1
screen -r query_$date -X stuff $"start transaction;\n"
sleep 1
screen -r query_$date -X stuff $"$query;\n"
status=$(echo "$?")

if [ $status != 0 ]
then
        screen -r query_$date -X stuff $"rollback;\n"       
	echo "Something Went Wrong!"
else
        screen -r query_$date -X stuff $"commit;\n"
        echo "Successfully Executed"
fi

screen -ls

#exec &> ${OUTPUTLOG}
#exit $status

