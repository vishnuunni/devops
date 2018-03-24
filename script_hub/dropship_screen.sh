#!/bin/bash
date=`date +%d%B%Y`
screen -dmS test_screen_$date
screen -r test_screen_$date -X stuff $"sh /home/vishnu/devops/script_hub/dropship_upload_folder_s3_push.sh\n"

