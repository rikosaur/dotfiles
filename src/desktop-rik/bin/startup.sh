#!/bin/sh

# Startup Commands
# Rik Brugman 2017

# VGA/Graphics
xrandr --output HDMI-3 --primary --auto --output HDMI-4 --auto --right-of HDMI-3
feh --bg-scale 'pictures/background.jpg'

# Keyboard
xbindkeys &

# append home to path
PATH=$PATH:$HOME/bin

# USB automount software
udiskie --try -aF &

# Others
bin/start-polybar
dunst &
dropbox &
