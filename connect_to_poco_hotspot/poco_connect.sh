#!/bin/sh

exstatus="nie"
while [ "$exstatus" == "nie" ]
do
	nmcli device wifi connect POCO\ X3\ Pro_3809
	exstatus=$(nmcli -t -f active,ssid dev wifi | head -1 | grep -o '^...')
	sleep 5
done
