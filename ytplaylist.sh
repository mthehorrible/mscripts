#!/bin/bash

echo Playlist start number

read num

echo Enter the YouTube Playlist URL

read yv

youtube-dl -f "bestvideo+bestaudio[ext=m4a]/bestvideo+bestaudio/best" --playlist-start $num "$yv"