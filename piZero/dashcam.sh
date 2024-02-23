#!/bin/bash
#exports the variables folders containing logs and recordings/videos
export folder_path="/home/piDash/Desktop/Videos/recordings/finished"
export log_file_path="/home/piDash/Desktop/Videos/recordings/dashcam.log"
export video_file_path="/home/piDash/Desktop/Videos/recordings/dashcam.flv"

# checks if the folder is present, if not creates the folder
echo "looking for folder"
if [ -d $folder_path ]
then
    echo "found folder"
else
    echo "no folder found \n creating one now"
    mkdir -p $folder_path
fi

#checks for the log_file_path, if not creates the folder
echo "looking for folder"
if [ -d $log_file_path ]
then
    echo "found folder"
else
    echo "no folder found \n creating one now"
    mkdir -p $log_file_path
fi

#checks for the video_file_path, if not creates the folder
echo "looking for folder"
if [ -d $video_file_path ]
then
    echo "found folder"
else
    echo "no folder found \n creating one now"
    mkdir -p $video_file_path
fi
# finished all three folder checks 


# set variable to form the date variable
when=$(date)

# checks if dashcam.log is present,if not touch dashcam.log
echo "looking for log file"
if [ -e $log_file_path ]
then
    echo "found previous dashcam.log"
else
    echo "no dashcam log file \n creating one now"
    touch  $log_file_path
fi
# appends the date to the previous video in file system that finished recording to the same name 
if [ -e $video_file_path ]
then
    echo "found previous recording"
    mv dashcam.flv $folder_path/$(date+%F-%H:%M).dashcam.flv

else
    echo "no previous video found \n starting dashcam"
fi

# log to dashcam.log every time the service is started 
echo "Started video at: $when" >> $log_file_path


# record at 1024x760 with a Desktop preview window of 640x480, pipe to ffmpeg and output dashcam.flv 
raspivid -t 0 -w 1024 -h 760 -fps 25 -b 5000000 -p 0,0.640,480 -vf -o - | ffmpeg -i - -vcodec copy -an -f flv -r 25 -pix_fmt yuv420p $video_file_path -y