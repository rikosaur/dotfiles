#!/bin/sh

# Startup Commands
# Rik Brugman 2017

# Enable Tap-On-Touch
xinput set-prop 15 "libinput Tapping Enabled" 1

# VGA/Graphics
xrandr --output LVDS-1 --primary --auto --output HDMI-1-1 --auto --right-of LVDS-1
feh --bg-scale 'pictures/city.jpg'

# Keyboard
xbindkeys &

# append home to path
PATH=$PATH:$HOME/bin

# Others
bin/start-polybar
dunst &
dropbox &
