#!/bin/sh

MNTR_ASUS="DP-3-2"
MNTR_PRED="DP-3-1"
MNTR_YOGA="eDP-1"

#ASUS_MODE_LINE=$(cvt 1920 1080 60 | sed -n '2p' | cut -d ' ' -f 2-)
#ASUS_MODE=$(echo $ASUS_MODE_LINE | cut -d ' ' -f 1 | sed s/\"//g)

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode $MNTR_ASUS 1920x1080_60.00

xrandr --newmode "2560x1440_60.00"  312.25  2560 2752 3024 3488  1440 1443 1448 1493 -hsync +vsync
xrandr --addmode $MNTR_PRED 2560x1440_60.00

xrandr --output ${MNTR_PRED} \
       --mode 2560x1440_60.00 \

xrandr --output ${MNTR_ASUS} \
       --mode 1920x1080_60.00 \
       --above ${MNTR_YOGA} 

xrandr --output ${MNTR_YOGA} \
       --rotate inverted \
       --left-of ${MNTR_PRED}

~/.fehbg &
