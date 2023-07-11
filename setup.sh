#!/bin/bash

# Run this script to set up torture.sh on the user's crontab

crontab -l | {
    cat
    echo "* * * * * $(pwd)/torture.sh"
} | crontab -
