#!/bin/bash
cd /var/log/elasticsearch
zip -r /var/log/elasticsearch/Brands.log.$(date +%d%b%T).zip /var/log/elasticsearch/Brands.log && echo > /var/log/elasticsearch/Brands.log
find /var/log/elasticsearch -mtime +15 -type f -name "Brands.log.*" -exec rm -f {} \;
find . -name "Brands.log.*" | grep -v "zip" | cut -c 3-23 > find.txt
for name in $(cat find.txt)
	                do
				                        zip -r $name.zip $name && rm -rf $name
							                done
									rm -rf find.txt
