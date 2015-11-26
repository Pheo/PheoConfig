#!/bin/sh

EXE="/bin/xrandr"
BASEARGS="--output DisplayPort-0 --mode 1920x1080"
PRIMARY="eDP-0"

case $1 in
    "above" )
        $EXE $BASEARGS --above $PRIMARY;;
    "below" )
        $EXE $BASEARGS --below $PRIMARY;;
    "left" )
        $EXE $BASEARGS --left-of $PRIMARY;;
    "right" )
        $EXE $BASEARGS --right-of $PRIMARY;;
    "same" )
        $EXE $BASEARGS --same-as $PRIMARY;;
esac

