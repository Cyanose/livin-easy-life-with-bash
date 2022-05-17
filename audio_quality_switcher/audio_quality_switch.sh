#!/bin/sh

sudo renameat -e /etc/pulse/daemon.conf /etc/pulse/daemon.conf.backup &&
pulseaudio --kill && 
sleep 1.5 &&
pulseaudio --start &&
method=$(grep -oe "speex-float-.*" /etc/pulse/daemon.conf)

if [ $method = "speex-float-1" ] 
then
	notify-send "low-quality"
elif [ $method = "speex-float-10" ]
then
	notify-send "high-quality"
fi
