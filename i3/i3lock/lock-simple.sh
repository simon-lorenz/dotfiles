#!/bin/bash

scrot /tmp/screen.png
convert /tmp/screen.png -scale 5% -scale 2000% /tmp/screen.png # use -scale 10% -scale 1000% for finer blocks

i3lock -e -u -n -i /tmp/screen.png
rm /tmp/screen.png
