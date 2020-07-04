#!/bin/bash

#check if USB is connected
while [ "`sudo fdisk -l | grep -o '^/dev/sd[b-z][0-9]'`" ];
do
	#mount USB
	path=`sudo fdisk -l | grep -o '^/dev/sd[b-z][0-9]'`
	sudo mount $path /media
	
	#send a notifiction with a sound
	echo -ne '\007'; notify-send "USB device inserted"

	#pause the code for 3 second to avoid interference between notification
	sleep 3s
	
	#create a text file to indicate the date and time the usb was mounted 	
	cd /media 
	datemounted=`date`
	echo "mounted at $datemounted" >> date.txt

	#unmount USB and send a notification
	sudo umount -l /media
	spd-say "USB unmounted" ; notify-send "USB unmounted"
done
