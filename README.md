# piDash

## piZero
    - services
        - dashcam.service: 
        - upload.service:
    - dashcam.sh: 
    - shutdown.sh
    - startdashcam.sh: script that runs "dashcam.sh" script
    - stopdashcam.sh
    - upload_files.sh
## how to run
    1. To start dashcam, just run startdashcam.sh script
    2. Starting on boot: to automatically start startdashcam.sh when pi boots up, attach dashcam.service to /etc/systemd/.
    3. same applies to the upload service.
