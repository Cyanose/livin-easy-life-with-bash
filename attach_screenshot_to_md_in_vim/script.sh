#!/bin/sh
ss_folder="$HOME/Obrazy/Screenshoty/"

last_ss=$(exa -rsnew $ss_folder | head -1 )

<<<<<<< HEAD
mkdir .resources
=======
mkdir .resources 2>/dev/null
>>>>>>> 148a01c00fc6433a8220ac894ba861422ee01029
cp ${ss_folder}$last_ss .resources/

prefix_of_grabbed_last=$(echo $last_ss | sed 's/.png$//')
vim_image_code="![$prefix_of_grabbed_last](.resources/${last_ss})"

echo $vim_image_code | xclip -selection clipboard
