#!/bin/sh

# Startup Commands
# Rik Brugman 2017

# Setup touchpad properties
# Click-on-tap
xinput set-prop 15 "libinput Tapping Enabled" 1

# VGA/Graphics
xrandr --output LVDS1 --auto --output HDMI-1-1 --auto --left-of LVDS1
feh --bg-scale 'pictures/city.jpg'

# Keyboard
xbindkeys &

# Others
dunst &
