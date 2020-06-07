#!/bin/bash

echo Enter the YouTube URL

read ym

youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 $ym
