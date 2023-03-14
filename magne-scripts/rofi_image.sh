#!/bin/sh
VWALLPAPERS=~/Pictures/Vwallpapers/
WALLPAPERS=~/Pictures/Wallpapers/

mb() {
  find $1 -type f -printf "%T@ %p\n" | sort -n | cut -d' ' -f2 | while read A ; do
    echo -en "${A##$1}\x00icon\x1f$A\n";
  done | awk '{print NR, $0}' | rofi -dmenu -theme ~/.config/polybar/magneciareal/scripts/rofi/launcher_image.rasi -i -kb-custom-1 "Alt+q" -p "" "$@"
}

A=()
((field=4))

while read -r screen; do

  x=`echo $screen | grep -oP "\d+x\d+" | cut -d 'x' -f1`
  y=`echo $screen | grep -oP "\d+x\d+" | cut -d 'x' -f2`

  image="";

  [[ x -gt y ]] && \
    image="$WALLPAPERS$(mb $WALLPAPERS | awk '{print $2}')" || \
    image="$VWALLPAPERS$(mb $VWALLPAPERS | awk '{print $2}')";
  if [ $image = $VWALLPAPERS ] || [ $image = $WALLPAPERS ]; then
    A+=(`cat ~/.fehbg | cut -d\  -f$field | awk '{if (NR == 2){ print $0 }}' | sed "s/'//g"`);
  else
    A+=("${image[*]}")
  fi
  ((field+=1))
done <<< `xrandr | grep " connected"`

pkill xwinwrap
#eval "$feh_command" >> ~/.config/magne-scripts/rofi_image.log
feh --bg-fill ${A[@]}
