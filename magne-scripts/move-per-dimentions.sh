#!/bin/zsh
SOURCE=$1
DESTV=$2
DESTH=$3

echo "SOURCE $SOURCE"

exiv2 $SOURCE/* 2> /dev/null | grep -i "image size" | while read info; do
  file=`echo $info | cut -d\  -f1`
  resolution=`echo $info | grep -oP "\d+ x \d+" | sed "s/ //g"`

  
  x=`echo $resolution | cut -dx -f1`;
  y=`echo $resolution | cut -dx -f2`;

  if [[ $x -gt $y ]]; then
    mv $file $DESTH
  else
    mv $file $DESTV
  fi

done
