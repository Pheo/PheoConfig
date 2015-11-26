#!/bin/sh

EXE="/usr/bin/amixer"
PERIOD=5

case $1 in
    "mute" )
        $EXE set Master toggle;;
    "up" )
        $EXE set Master $PERIOD%+;;
    "down" )
        $EXE set Master $PERIOD%-;;
    "mic" )
        $EXE set Capture toggle;;
esac
