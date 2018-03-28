#!/bin/bash
data=/data/trendin/dropship/uploads/
date=`date +%d%B%Y`
echo ""
echo " Pushing dropship uploads folder to s3"
echo " Checking for folders to create directory"

if [ -d "$data/flipkart/cancelorders" ]
then
	mkdir -p /backup/dropship_upload_$date/flipkart/cancelorders
	#find $data/flipkart/cancelorders -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/flipkart/cancelorders/ \;
        echo "/backup/dropship_upload_$date/flipkart/cancelorders directory created [done]"
else
	echo "Directory not found! [error]"
fi

if [ -d "$data/flipkart/productupdate" ]
then
	mkdir -p /backup/dropship_upload_$date/flipkart/productupdate
	#find $data/flipkart/productupdate -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/flipkart/productupdate/ \;
	echo "/backup/dropship_upload_$date/flipkart/productupdate directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/paytm/createorder" ]
then
	mkdir -p /backup/dropship_upload_$date/paytm/createorder
	#find $data/paytm/createorder -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/paytm/createorder/ \;
	echo "/backup/dropship_upload_$date/paytm/createorder directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/paytm/packingslip" ]
then
	mkdir -p /backup/dropship_upload_$date/paytm/packingslip
	#find $data/paytm/packingslip -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/paytm/packingslip/ \;
	echo "/backup/dropship_upload_$date/paytm/packingslip directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/paytm/productupdate" ]
then
	mkdir -p /backup/dropship_upload_$date/paytm/productupdate
	#find $data/paytm/productupdate -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/paytm/productupdate/ \;
	echo "/backup/dropship_upload_$date/paytm/productupdate directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/paytm/processorders/W502" ]
then
	mkdir -p /backup/dropship_upload_$date/paytm/processorders/W502
	#find $data/paytm/processorders/W502 -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/paytm/processorders/W502/ \;
	echo "/backup/dropship_upload_$date/paytm/processorders/W502 directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$date/limeroad/customercancelorder/W501" ]
then
	mkdir -p /backup/dropship_upload_$date/limeroad/customercancelorder/W501
	#find $date/limeroad/customercancelorder/W501 -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/limeroad/customercancelorder/W501/ \;
	echo "/backup/dropship_upload_$date/limeroad/customercancelorder/W501 directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/limeroad/delivered/W501" ]
then
	mkdir -p /backup/dropship_upload_$date/limeroad/delivered/W501
	#find $data/limeroad/delivered/W501 -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/limeroad/delivered/W501/ \;
	echo "/backup/dropship_upload_$date/limeroad/delivered/W501 directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/limeroad/customercancelorder/W502" ]
then
	mkdir -p /backup/dropship_upload_$date/limeroad/customercancelorder/W502
	#find $data/limeroad/customercancelorder/W502 -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/limeroad/customercancelorder/W502/ \;
	echo "/backup/dropship_upload_$date/limeroad/customercancelorder/W502 directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/unistore/downloadorders" ]
then
	mkdir - p /backup/dropship_upload_$date/unistore/downloadorders
	#find $data/unistore/downloadorders -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/unistore/downloadorders/ \;
	echo "/backup/dropship_upload_$date/unistore/downloadorders directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/unistore/listingerror" ]
then
	mkdir -p /backup/dropship_upload_$date/unistore/listingerror
	#find $data/unistore/listingerror -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/unistore/listingerror/ \;
	echo "/backup/dropship_upload_$date/unistore/listingerror directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/unistore/productupdatesapi" ]
then
	mkdir -p /backup/dropship_upload_$date/unistore/productupdatesapi
	#find $data/unistore/productupdatesapi -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/unistore/productupdatesapi/ \;
	echo "/backup/dropship_upload_$date/unistore/productupdatesapi directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/snapdeal/customercancelorder" ]
then
	mkdir -p /backup/dropship_upload_$date/snapdeal/customercancelorder
	#find $data/snapdeal/customercancelorder -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/snapdeal/customercancelorder/ \;
	echo "/backup/dropship_upload_$date/snapdeal/customercancelorder directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/snapdeal/updateAWBnumber" ]
then
	mkdir -p /backup/dropship_upload_$date/snapdeal/updateAWBnumber
	#find $data/snapdeal/updateAWBnumber -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/snapdeal/updateAWBnumber/ \;
	echo "/backup/dropship_upload_$date/snapdeal/updateAWBnumber directory created [done]"

if [ -d "$data/myntra/discountupdate" ]
then
	mkdir -p /backup/dropship_upload_$date/myntra/discountupdate
	#find $data/myntra/discountupdate -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/myntra/discountupdate/ \;
	echo "/backup/dropship_upload_$date/myntra/discountupdate directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/myntra/invoice" ]
then
	mkdir -p /backup/dropship_upload_$date/myntra/invoice
	#find $data/myntra/invoice -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/myntra/invoice/ \;
	echo "/backup/dropship_upload_$date/myntra/invoice directory created [done]"
else
	        echo "Directory not found! [error]"
	fi

if [ -d "$data/myntra/invoicerequest" ]
then
	mkdir -p /backup/dropship_upload_$date/myntra/invoicerequest
	#find $data/myntra/invoicerequest -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/myntra/invoicerequest/ \;
	echo "/backup/dropship_upload_$date/myntra/invoicerequest directory created [done]"
else
		echo "Directory not found! [error]"
fi

if [ -d "$data/myntra/orderstodropship" ]
then
	mkdir -p /backup/dropship_upload_$date/myntra/orderstodropship
	#find $data/myntra/orderstodropship -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/myntra/orderstodropship/ \;
	echo "/backup/dropship_upload_$date/myntra/orderstodropship directory created [done]"
else
		echo "Directory not found! [error]"
fi
				
if [ -d "$data/myntra/productupdate" ]
then
	mkdir -p /backup/dropship_upload_$date/myntra/productupdate
	#find $data/myntra/productupdate -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/myntra/productupdate/ \;
	echo "/backup/dropship_upload_$date/myntra/productupdate directory created [done]"
else
		echo "Directory not found! [error]"
fi

if [ -d "$data/myntra/readytodispatch" ]
then
	mkdir -p /backup/dropship_upload_$date/myntra/readytodispatch
	#find $data/myntra/readytodispatch -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/myntra/readytodispatch/ \;
	echo "/backup/dropship_upload_$date/myntra/readytodispatch directory created [done]"
else
		echo "Directory not found! [error]"
fi

if [ -d "$data/myntra/updateorder" ]
then
	mkdir -p /backup/dropship_upload_$date/myntra/updateorder
	#find $data/myntra/updateorder -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/myntra/updateorder/ \;
	echo "/backup/dropship_upload_$date/myntra/updateorder directory created [done]"
else
		echo "Directory not found! [error]"
fi

if [ -d "/backup/dropship_upload_$date" ]
then
echo "Zipping the folder"
zip -r /backup/dropship_upload_$date.zip /backup/dropship_upload_$date
echo "Pushing to s3"
aws s3 cp /backup/dropship_upload_$date.zip s3://dropship-uploads/Dropship_Uploads_folder_zip/
status=$(echo "$?")

if [ $status != 0 ]
then
	echo "Something went wrong on pushing to s3! [error]"
	echo "s3://dropship-uploads/Dropship_Uploads_folder_zip/"
else
        echo "Successfully Uploaded to s3 [done]"
	rm -rf /backup/dropship_upload_$date.zip /backup/dropship_upload_$date 
fi

echo "Completed moving to s3 [done]"
else
	echo "/backup/dropship_upload_$date directory not found! [error]"
	exit
fi
