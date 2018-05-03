#!/bin/bash
echo ""
echo "------"
echo "Welcome 2 chatbot"
echo "------"
echo ""
echo -n "Enter msg : "
read msg
if [ $msg = hai ]
then
	echo "hi hello"
elif [ $msg = hello ]
then
	echo "hi"
elif [ $msg = "who" ]
then
	echo "i am Jarvis"
else
	exit
fi

