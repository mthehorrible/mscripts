#!/bin/bash

echo Enter the YouTube URL

read yv

youtube-dl -f "bestvideo+bestaudio[ext=m4a]/bestvideo+bestaudio/best" --merge-output-format mp4 $yv
