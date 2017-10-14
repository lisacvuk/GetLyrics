#!/bin/bash
FILES=/lisac/Music/*/*/*.mp3 # Edit to match your library
for f in $FILES
do
  ARTIST=$(mp3info -p %a "$f")
  TITLE=$(mp3info -p %t "$f")
  ./getsong.sh "$ARTIST" "$TITLE"
done
