#!/bin/zsh

while read image; do
  ``
  if [[ `file --mime-type $image | awk '{print $NF}'` =~ "image/*" ]]; then
    echo "is image"
  else
    echo "is not image"
    continue;
  fi

  resolution=`exiv2 $image 2> /dev/null | grep -i "image size" | grep -oP "\d+ x \d+" | sed "s/ //g"`;

  x=`echo $resolution | cut -dx -f1`;
  y=`echo $resolution | cut -dx -f2`;
  XMAX=2560;
  YMAX=1980;

  if [[ $x -gt $y ]]; then
    [[ x -lt XMAX ]] && waifu2x-ncnn-vulkan -n 3 -i $image -o $image;
  else
    [[ y -lt YMAX ]] && waifu2x-ncnn-vulkan -n 3 -i $image -o $image;
  fi
  
  #printf "$image $x x $y\n\n"
done <<< `ls`

