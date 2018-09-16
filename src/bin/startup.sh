#!/bin/sh

# Startup Commands
# Rik Brugman 2017

# Enable Tap-On-Touch
xinput set-prop 15 "libinput Tapping Enabled" 1

# VGA/Graphics
xrandr --output LVDS-1-1 --dpi 100 --primary --auto --output HDMI-0 --auto --right-of LVDS-1-1
feh --bg-fill 'pictures/background.jpg'

# Keyboard
xbindkeys &

# append home to path
PATH=$PATH:$HOME/bin

# start USB automount software
udiskie --tray -aF &

# Others
bin/start-polybar
dunst &
dropbox &
