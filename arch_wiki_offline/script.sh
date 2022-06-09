#!/bin/sh
folder='/usr/share/doc/arch-wiki/html/en/'
prefix='/usr/share/doc/arch-wiki/html/en/'
selection=$(find $folder -iname "*.html" | sed "s|$prefix||g" | rofi -dmenu -i -p "Choose article to display:" -l 15)

chromium $prefix${selection} 2>/dev/null
