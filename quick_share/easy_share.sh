#!/bin/sh

file=$(find $HOME -type f | dmenu -i -l 25)
curl -F "file=@$file" 0x0.st | xclip -selection c
notify-send "Your file link is in the clipboard"
