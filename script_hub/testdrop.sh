#!/bin/bash
#!/bin/bash
data=/data/trendin/dropship/uploads/
date=`date +%d%B%Y`
echo ""
echo " Pushing dropship uploads folder to s3"
echo " Checking for folders to create directory"

if [ -d "$data/flipkart/cancelorders" ]
then
		mkdir -p /backup/dropship_upload_$date/flipkart/cancelorders
			find $data/flipkart/cancelorders -type f -mtime +15 -exec mv '{}' /backup/dropship_upload_$date/flipkart/cancelorders/ \;
			        echo "/backup/dropship_upload_$date/flipkart/cancelorders directory created [done]"
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
