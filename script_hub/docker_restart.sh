#!/bin/bash
#echo ""
#echo "Brands : all, allensolly, louisphilipe, vanheusenindia, peterengland, planetfashion, peopleonline, simoncarter"
#echo ""
#echo -n "Please enter one of the brands : "
#read brandname

if [ $1 = "test" ]
then
	echo "Test..."
	sh /home/c2s/touch.sh

elif [ $1 = "test2" ]
then
	echo "Test2..."
	sh /home/c2s/touch2.sh

elif [ $brandname = "all" ]
then
	echo "Restarting all brands..."
	sh /opt/c2s/scripts/restart-all.sh

elif [ $brandname = "allensolly" ]
then
	echo "Restarting allensolly..."
	sh /opt/c2s/scripts/restart-desktop-allensolly.sh

elif [ $brandname = "louisphilipe" ]
then
	echo "Restarting louisphilipe..."
	sh /opt/c2s/scripts/restart-desktop-louisphilippe.sh

elif [ $brandname = "vanheusenindia" ]
then
	echo "Restarting vanheusenindia..."
	sh /opt/c2s/scripts/restart-desktop-vanheusen.sh

elif [ $brandname = "peterengland" ]
then
	echo "Restarting peterengland..."
	sh /opt/c2s/scripts/restart-desktop-peterengland.sh

elif [ $brandname = "planetfashion" ]
then
	echo "Restarting planetfashion..."
	sh /opt/c2s/scripts/restart-desktop-planetfashion.sh

elif [ $brandname = "peopleonline" ]
then
	echo "Restarting peopleonline..."
	sh /opt/c2s/scripts/restart-desktop-hellopeople.sh

elif [ $brandname = "simoncarter" ]
then
	echo "Restarting simoncarter..."
	sh /opt/c2s/scripts/restart-desktop-simoncarter.sh
fi
