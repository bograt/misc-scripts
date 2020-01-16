#!/bin/bash/

# Sets the date, placed in presentation filename
today=`date '+%d.%m.%y'`;
# Sets directory for presentations and videos
class='/home/bograt/class/201';

# For the second class of the day
# Searches for the same randomly selected music video played before first class
if ls $class/used* 1>/dev/null 2>&1; then
# If found, plays the video, plays the presentation, and moves video to holding
# directory
	mpv --fs $class/used* && loimpress --show $class/*$today* && mv $class/used* /home/bograt/videos/201-used/

# For the first class
else

# Lists all videos and randomly selects one, setting its absolute path as a
# variable
video="$(ls $class/*.avi $class/*.mp4 $class/*.webm $class/*.mkv | shuf -n1)";

# Plays the video, removes path from filename, plays presentation, and renames
# music video for use in the second class
mpv --fs $video && x=${video##*/} && loimpress --show $class/*$today* && mv $video $class/used-$x
fi
