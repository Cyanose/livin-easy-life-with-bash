#!/bin/sh
path="/home/cyanos/projekty/bin_bash_scripts/quickBookmarksChromium/bookmarkSelection" # need an absoulte path since I call this via keyboard shortcut 
#path=($PWD/bookmarkSelection) #use this instead If you want to run this script from the commandline
sel=$(ls $path | rofi -dmenu -l 25 -p "Choose website to visit: ") 
site=$(cat ${path}/$sel)
chromium $site > /dev/null 2>&1
