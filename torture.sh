#!/bin/bash

# Generate a random time between 0-5 minutes
random_seconds=$((RANDOM % 10))
sleep $random_seconds

mpg123 -q /Users/addisongoolsbee/Desktop/gnome-torture/gnome.mp3
