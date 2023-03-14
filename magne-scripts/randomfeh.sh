#!/bin/bash

WALLPAPERS=(`find ~/Pictures/Wallpapers`)
VWALLPAPERS=(`find ~/Pictures/Vwallpapers`)

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
