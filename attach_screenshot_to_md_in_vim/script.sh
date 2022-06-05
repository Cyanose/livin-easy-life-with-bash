#!/bin/sh
ss_folder="$HOME/Obrazy/Screenshoty/"

last_ss=$(exa -rsnew $ss_folder | head -1 )

mkdir .resources
cp ${ss_folder}$last_ss .resources/

prefix_of_grabbed_last=$(echo $last_ss | sed 's/.png$//')
vim_image_code="![$prefix_of_grabbed_last](.resources/${last_ss})"

echo $vim_image_code | xclip -selection clipboard
