#!/bin/bash
mkdir lyrics
cd lyrics
name=$1
name="${name// /_}"
song=$2
song="${song// /_}"
wget -q http://lyrics.wikia.com/wiki/$name:$song
cd ..
python3 getsong.py lyrics/$name:$song
