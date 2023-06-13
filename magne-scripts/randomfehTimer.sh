#!/bin/bash

WALLPAPERS=(`find ~/Pictures/Wallpapers`)
VWALLPAPERS=(`find ~/Pictures/Vwallpapers`)

WN=${#WALLPAPERS[@]}
VN=${#VWALLPAPERS[@]}

while true; do
  sleep $1
  W=$((1 + $RANDOM % ${WN}))
  V=$((1 + $RANDOM % ${VN}))

  WB=${WALLPAPERS[$W]};
  VB=${VWALLPAPERS[$V]};
  feh --bg-fill -- "$WB" "$VB"
done
