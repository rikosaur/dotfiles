#!/bin/sh

# Startup Commands
# Rik Brugman 2017

# Setup touchpad properties
# Click-on-tap
xinput set-prop 15 "libinput Tapping Enabled" 1

# VGA/Graphics
xrandr --output LVDS-1 --primary --auto --output HDMI-1-1 --auto --left-of LVDS-1
feh --bg-scale 'pictures/city.jpg'

# Keyboard
xbindkeys &

# Others
dunst &
dropbox &
