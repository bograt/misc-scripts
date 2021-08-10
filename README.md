# My Scripts

## Disclaimer

These are just a bunch of scripts I write to make my life easier.They're all janky, and could use improvement.

## Scripts

s5 - stupid simple static site script (v.0.1.0)
: I tried using a static site generator, and I didn't have a good experience.
But copying and editing a template for my website is repetitive, and computers
exist to do repetitive things for us so we don't have to. So what I have here is
the absolute bare-bones test for this which I whipped up in a few minutes before
work.

201.sh
: Very specific use case for a French course I taught. Refer to its README

wifiadd
: simple script to add new wireless networks to the wpa_supplicant config.

chname
: POSIX script to rename macs to "$1"-SerialNumber

diceroller.py
: basic program for rolling dice in RPGs (like D&D) in XdX format.

## todo
- improve wifiadd
- sort through other scripts, adding what's not just borrowed.

#### s5
- make `$title` cleaner for filename
- ensure that the markers are there to replace with title and content
- make it suited for pagination, long feeds, &c.
- add links to output files on other pages (interactive)
- detect and convert markdown (likely through pandoc)
