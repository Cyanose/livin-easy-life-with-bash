#!/bin/sh

folder='/usr/share/doc/python-3.10.5-docs-html/'
prefix='/usr/share/doc/python-3.10.5-docs-html/'

selection=$(find $folder -iname "*.html" | sed "s|$prefix||g" | rofi -dmenu -i -p "Choose article to display: " -l 15)

chromium $prefix${selection} 2>/dev/null
