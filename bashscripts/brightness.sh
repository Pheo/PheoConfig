#!/bin/sh

EXE="/usr/bin/light"
PERIOD=10

case $1 in
    "inc" )
        $EXE -A $PERIOD;;
    "dec" )
        $EXE -U $PERIOD;;
esac

