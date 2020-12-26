# Script for NCSU French Courses

## Purpose

The French classes at this school have a peculiar format for the introductory
and intermediate courses. Most instructors play a music video before class time
as students are walking in and getting set up at their desks. Immediately
afterwards, class begins and centers around a presentation (here in
LibreOffice). I teach two sections of the same class, so I prefer the same 
randomly selected video for both sections in the same day. 

## Previous solution

The other instructors come to class 10 minutes before the time, log into the
provided Windows machines, download the presentation, open it, minimize it, open
a music video on YouTube, play that in fullscreen, and afterwards open the
presentation and click present.

## Automated

### Requirements:

* music videos already downloaded
* date within presentation filename (d.m.y)
* mpv
* LibreOffice Impress

### Script

Essentially the process is:
* if there is a video with the name "used\*" (2nd class)
	1. play that video
	2. start the presentation
	3. move the video out of the pwd
* else
	1. list all video files
	2. randomly select one
	3. set that as a variable
	4. play that video
	5. extract the filename (from the absolute path)
	6. start the presentation
	7. rename the file "used-$filename"

## Disclaimer

This script is gross, simple, and has a very specific use case. Don't blame me
if something goes wrong.
