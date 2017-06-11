#!/bin/bash
ARTIST=$(qdbus org.mpris.MediaPlayer2.clementine /org/mpris/MediaPlayer2 Metadata | awk '/artist:/{$1=""; print substr($0,2)}')
TITLE=$(qdbus org.mpris.MediaPlayer2.clementine /org/mpris/MediaPlayer2 Metadata | awk '/title:/{$1=""; print substr($0,2)}')

./getsong.sh "$ARTIST" "$TITLE"
