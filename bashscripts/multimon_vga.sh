#!/bin/sh

EXE="/bin/xrandr"
BASEARGS="--output DP-2 --mode 1920x1080"
PRIMARY="eDP-1"

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
    * )
        echo "above | below | left | right | same"
esac

