#! /bin/bash

gnome-screenshot -af /tmp/temp_tsrct.png
tesseract /tmp/temp_tsrct.png stdout | xclip -sel c
rm /tmp/temp_tsrct.png
