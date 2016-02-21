#!/bin/bash

WALLPAPERS="$HOME/Pictures/Bing/"
APIURL="http://www.bing.com/HPImageArchive.aspx?format=xml&idx=0&n=1&mkt=$REGION"

BING="http://www.bing.com"
EXT=".jpg"

mkdir -p $WALLPAPERS

CALLURL=$BING$(echo $(curl -s $APIURL) | egrep -o "<urlBase>(.*)</urlBase>" | cut -d ">" -f 2 | cut -d "<" -f 1)$RES$EXT
if wget --quiet --spider "$CALLURL"
then
    FILENAME=${CALLURL##*/}
    curl -s -o $WALLPAPERS$FILENAME $CALLURL
else
    FILENAME=${CALLURL##*/}
    curl -s -o $WALLPAPERS$FILENAME $CALLURL
fi
osascript -e 'tell application "System Events" to set picture of every desktop to ("'$WALLPAPERS$FILENAME'" as POSIX file as alias)'
