#!/bin/sh

# for left handed
# Map to screen
# available: DVI-0, VGA-0, DisplayPort-0
xsetwacom --set "HUION H420 Pen stylus" rotate half
xsetwacom --set "HUION H420 Pen stylus" MapToOutput $1
xsetwacom --set "HUION H420 Pen stylus" Area 0 3588 1946 4680

xsetwacom --set "HUION H420 Pad pad" Button 1 key "ctrl z"
xsetwacom --set "HUION H420 Pad pad" Button 2 key "ctrl y"
xsetwacom --set "HUION H420 Pad pad" Button 3 key "ctrl super o"
