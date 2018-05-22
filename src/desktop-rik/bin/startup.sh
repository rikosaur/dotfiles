#!/bin/sh

# Startup Commands
# Rik Brugman 2017

# VGA/Graphics
xrandr --output HDMI-3 --primary --auto --output HDMI-4 --auto --right-of HDMI-3
feh --bg-scale 'pictures/city.jpg'

# Keyboard
xbindkeys &

# append home to path
PATH=$PATH:$HOME/bin

# Others
bin/start-polybar
dunst &
dropbox &
