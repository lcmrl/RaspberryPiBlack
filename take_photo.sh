#!/bin/bash
echo "Taking a photo ..."

#Storing first image number
while read line; do
next_id=$(expr $line + 1)
next_image="photo_$next_id.jpg"
done</home/pi/Desktop/photos/tmp.txt
echo $next_image
echo $next_id >> /home/pi/Desktop/photos/tmp.txt


#Take the photo with libcamera
libcamera-jpeg -o /home/pi/Desktop/photos/imgs/"$next_image"
