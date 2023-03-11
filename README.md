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
## config:
    installation: 
        - enable camera legacy stack:
            $ sudo raspi-config
            (interface options, enable legacy camera, reboot rpi)
## how to run
    - To start dashcam (without boot startup), just run startdashcam.sh script:
        $ /bin/bash /home/piDash/piZero/dashcam.sh
    - Starting on boot (two options explained): 
        1. using Systemd: to automatically start startdashcam.sh when pi boots up, attach dashcam.service to /etc/systemd/system/.
        2. Using .bashrc.local: On your pi, edit /etc/rc.local with root permissions. 
            $ sudo nano rc.local
        attach /bin/bash
        3. crontab, rc.local, etc: In addition to the two option listed above, you can utilize more methods to run dashcam automatically, feel free to research how to implement the script corresponding to implementation used.

    3. same applies to the upload service.
