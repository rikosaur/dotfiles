#!/bin/sh

# Startup Commands
# Rik Brugman 2017

# Setup touchpad properties
# Click-on-tap
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
google-drive-ocamlfuse /home/rik/google-drive &
# .local/share/JetBrains/Toolbox/bin/jetbrains-toolbox %u --minimize &
