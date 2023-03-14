#!/bin/sh

VWALLPAPERS=~/Videos/vwallpapers/
WALLPAPERS=~/Videos/wallpapers/

mb() {
  ls $1 | while read A ; do  echo -en "$A\n"; done | awk '{print NR, $0}' | rofi -dmenu -theme ~/.config/polybar/magneciareal/scripts/rofi/launcher_live.rasi -i -kb-custom-1 "Alt+q" -p "" "$@"
}

rm ~/.config/magne-scripts/videos.txt

xrandr | grep " connected" | while read -r screen; do
  dim=`echo $screen | grep -oP "\d+x\d+\+\d+\+\d+"`
  x=`echo $screen | grep -oP "\d+x\d+" | cut -d 'x' -f1`
  y=`echo $screen | grep -oP "\d+x\d+" | cut -d 'x' -f2`
  video="";
  [[ x -gt y ]] && \
    video="$WALLPAPERS$(mb $WALLPAPERS | awk '{print $2}')" || \
    video="$VWALLPAPERS$(mb $VWALLPAPERS | awk '{print $2}')";
  [ $video = $VWALLPAPERS ] || [ $video = $WALLPAPERS ] && break;

  echo "xwinwrap -ov -g $dim -st -sp -ni -s -nf -b -- mpv -wid %WID $video --no-osc --no-osd-bar --loop --no-audio --panscan=1.0 --no-input-default-bindings --quiet" >> ~/.config/magne-scripts/videos.txt
done

pkill xwinwrap
pkill xwinwrap

while read -r line; do
  eval $line &
done < ~/.config/magne-scripts/videos.txt
