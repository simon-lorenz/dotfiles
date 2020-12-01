#!/bin/bash

#depends on: imagemagick, i3lock, scrot

IMAGE=/tmp/lockscreen.png
TEXT=/tmp/locktext.png
ICON=/home/simon/.config/i3lock/icon.png

scrot $IMAGE
convert $IMAGE -scale 10% -scale 1000% -fill black -colorize 25% $IMAGE
[ -f $TEXT ] || {
    convert -size 3440x60 xc:white -font Liberation-Sans -pointsize 26 -fill black -gravity center -annotate +0+0 'Enter password' $TEXT;
    convert $TEXT -alpha set -channel A -evaluate set 50% $TEXT;
}
convert $IMAGE $TEXT -gravity center -geometry +0+200 -composite $IMAGE
convert $IMAGE $ICON -gravity center -composite -matte $IMAGE
i3lock -u -i $IMAGE
rm $IMAGE
rm $TEXT
