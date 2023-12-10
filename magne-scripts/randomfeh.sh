#!/bin/bash

if [ -z $1 ]; then
  echo "Usage: $0 <wallpapers-dir> <vwallpapers-dir>"
  exit;
fi

WALLPAPERS=(`find $1`)
VWALLPAPERS=(`find $2`)

WN=${#WALLPAPERS[@]}
VN=${#VWALLPAPERS[@]}

echo "WN = $WN"
echo "VN = $VN"

W=$((1 + $RANDOM % ${WN}))
V=$((1 + $RANDOM % ${VN}))

echo "W = $W"
echo "V = $V"

WB=${WALLPAPERS[$W]};
VB=${VWALLPAPERS[$V]};

feh --bg-fill -- "$WB" "$VB" >> random_fe.log
