#!/bin/bash

#start upload file
/bin/bash /home/piDash/piDash/piZero/dashcam.sh

# remove files older than 3 days (259200 seconds) 
#Use -mtime +3 to remove files older than 3 days
#use -exec to remove the files
#use {} to represent the files
#use \; to end the command
#uncomment if you want to remove files older than 3 days
#find /home/pi/Desktop/DashVideos -type f -iname '*.flv' -mtime +3 -exec rm {} \;

# start dashcam service 
sudo systemctl start dashcam



