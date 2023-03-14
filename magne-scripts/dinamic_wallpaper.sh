#!/bin/sh
# you need shantz-xwinwrap-bzr and mpv to reproduce dinamic wallpapers
pkill xwinwrap

[ $1 ] && xwinwrap -ov -g 1920x1080+1080+840 -st -sp -ni -s -nf -b -- mpv -wid WID "$1" --no-osc --no-osd-bar --loop --no-audio --panscan=1.0 --no-input-default-bindings --quiet &

[ $2 ] && xwinwrap -ov -g 1080x1920+0+0 -st -sp -ni -s -nf -b -- mpv -wid WID "$2" --no-osc --no-osd-bar --loop --no-audio --panscan=1.0 --no-input-default-bindings --quiet &

#[ $1 ] && xwinwrap -ov -g 1920x1080 -st -sp -ni -s -nf -b -- mpv -wid WID "$1" --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-keepaspect --no-input-default-bindings &

#[ $2 ] && xwinwrap -ov -g 1920x1080+1920+0 -st -sp -ni -s -nf -b -- mpv -wid WID "$1" --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-keepaspect --no-input-default-bindings &

