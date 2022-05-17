#! /bin/bash
FOLDER="$HOME/Obrazy/Screenshoty"
NAME="$(ls --sort=time -r $FOLDER | tail -n 1 2>/dev/null)"
$HOME/.local/bin/dragon $FOLDER/$NAME & (sleep 3 && pkill dragon)
