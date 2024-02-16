#!/usr/bin/env python

from dotenv import load_dotenv
import os

load_dotenv()

#testing if the env variables are loaded
usb_path = os.getenv("DASHCAM_USB_PATH")
print (usb_path)
print (os.getenv("ROOT_PATH"))
'''
import sys
sys.path.insert(0, '/mnt/c/Users/Mike/Documents/esp/dashCam/piDash/piZero/python/test')

import subprocess


ROOT_PATH = os.getenv("ROOT_PATH", "/home/piDash")
RECORDINGS_PATH = os.getenv("RECORDINGS_PATH", "Desktop/Videos/recordings")
UPLOADED_RECORDINGS_PATH = os.getenv("UPLOADED_RECORDINGS_PATH", "uploaded")
PERCENTAGE_THRESHOLD = 25.0


#checking if there is enough space

statvfs = os.statvfs(ROOT_PATH)

free_bytes = statvfs.f_frsize * statvfs.f_bfree
total_bytes = statvfs.f_frsize * statvfs.f_blocks

free_bytes_percentage = ((1.0 * free_bytes) / total_bytes) * 100

#if free_bytes_percentage < PERCENTAGE_THRESHOLD:

#getting local recordings path
recordings_path = os.path.join(ROOT_PATH, RECORDINGS_PATH)

recordings = []
for dir_name in os.listdir(recordings_path):
    recording_path = os.path.join(recordings_path, dir_name)
    recordings.append((reco

'''
