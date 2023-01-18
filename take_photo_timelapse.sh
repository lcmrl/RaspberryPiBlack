#!/bin/bash
#https://www.raspberrypi.com/documentation/computers/camera_software.html
echo "[TIMELAPSE PHOTO]"

#Take the photo with libcamera
libcamera-still -t 60000 -o /home/pi/Desktop/github_lcmrl/RaspberryPiBlack/photos/img%d.jpg --timelapse 3000 --width 648 --height 486
