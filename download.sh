#!/bin/bash

file="./GoodSongs.txt"
while read line
 do
   youtube-dl -f 140 $line
 done <"$file"
mv *.m4a youtubeSongs

files=youtubeSongs/*
for f in $files
do
  faad "$f" 
done
mv ./youtubeSongs/*.wav ./wavSongs

files=wavSongs/*
for f in $files
do
  lame "$f"
done
mv ./wavSongs/*.mp3 mp3Songs
today=$(date +%Y-%m-%d)
cp mp3Songs/* $today
mv $today ~/Media/Music
rm wavSongs/*
rm youtubeSongs/*
rm mp3Songs/*
