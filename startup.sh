#!/bin/bash -e
echo "Starting startup script"

xrandr --dpi 200
xflux -z 92805
xset r rate 250 60
# multiple screens
# replace - above to --right-of / left-of for position
xrandr --output eDP1 --primary --auto --output DP1 --above eDP1 --auto
xmodmap -e "keycode 133 = Control_L"
xmodmap -e "keycode 37 = Overlay1_Enable"
xmodmap -e "add control = Control_L"
xmodmap -e "remove control = Overlay1_Enable"
 
