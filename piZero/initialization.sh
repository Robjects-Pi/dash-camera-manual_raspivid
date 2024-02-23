# !/bin/bash
# This script is used to initialize the piZero for the first time
# It will do the following:

#- It will create the necessary directories and set the permissions for the files
# - necessary services for the piZero to run the dashcam and upload the files
# - necessary cron jobs to start the dashcam and upload the files
# - necessary python scripts to upload the files
# - necessary shell scripts to start, stop, and shutdown the dashcam
# - necessary shell scripts to upload the files
# - necessary shell scripts to shutdown the pi
# - necessary shell scripts to start the dashcam
# - necessary shell scripts to stop the dashcam
# - necessary shell scripts to upload the files

mkdir -p /home/piDash/Desktop/Videos/recordings/finished && mkdir -p /home/piDash/Desktop/Videos/recordings/started && sudo chmod 777 startdashcam.sh shutdown.sh stopdashcam.sh upload_files.sh dashcam.sh services/dashcam.service services/upload.service initialization.sh