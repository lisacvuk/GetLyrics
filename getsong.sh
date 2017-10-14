#!/bin/bash
if [ ! -d "lyrics_raw" ]; then
	mkdir lyrics_raw
fi
if [ ! -d "lyrics" ]; then
	mkdir lyrics
fi
cd lyrics_raw
name=$1
name="${name// /_}"
song=$2
song="${song// /_}"
if ( wget -q http://lyrics.wikia.com/wiki/$name:$song ) then
  echo "Downloaded lyrics for $name:$song"
  cd ..
  python3 getsong.py lyrics_raw/$name:$song lyrics/$name:$song
else
  echo "Error with wget occured."
fi
