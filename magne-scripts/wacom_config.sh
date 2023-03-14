#!/bin/sh

# for left handed
xsetwacom --set "HUION H420 stylus" rotate half
# Map to screen
# available: DVI-0, VGA-0
xsetwacom --set "HUION H420 stylus" MapToOutput $1

xsetwacom --set "HUION H420 Pad pad" Button 1 key "ctrl z"
xsetwacom --set "HUION H420 Pad pad" Button 2 key "ctrl y"
xsetwacom --set "HUION H420 Pad pad" Button 3 key "ctrl super o"
