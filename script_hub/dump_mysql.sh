#!/bin/bash
date=`date +%Y_%m_%d_%S`
echo ""
echo -n "Enter the db name : "
read dbname
echo "$dbname selected"
echo ""
echo -n "Enter the tables name : "
read tname
echo "$tname selected"
echo ""
if [ $tname = "all" ]
then
	mysqldump -u root -p'root' $dbname  > /home/vishnu/devops_ansible/script_hub/$dbname.$tname._$date.sql
	status=$(echo "$?")

	if [ $status != 0 ]
	then
		        echo ""
			        echo "Something Went Wrong"
			else
				        echo ""
					        echo "Successfully Taken Dump"
					fi
				else
mysqldump -u root -p'root' $dbname $tname > /home/vishnu/devops_ansible/script_hub/$dbname._$date.sql

status=$(echo "$?")

if [ $status != 0 ]
then
	echo ""
	echo "Something Went Wrong"
else
	echo ""
	echo "Successfully Taken Dump"
fi
fi
exit $status
