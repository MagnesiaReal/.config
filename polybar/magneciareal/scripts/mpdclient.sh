#!/usr/bin/env zsh

mb() { rofi -dmenu -theme ~/.config/polybar/magneciareal/scripts/rofi/mpdclient.rasi -i -kb-custom-1 "Alt+q" "$@" ;}

song() {
  mpc playlist | awk '{print NR, $0}' | mb -p ""
}


pos=$(song | awk '{print $1}')
cod=$?
[ ! "$pos" ] && exit
mpc play $pos

