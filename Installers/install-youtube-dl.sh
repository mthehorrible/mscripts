#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+x /usr/local/bin/youtube-dl

if [ "$1" == "apt" ]; then
        sudo apt install ffmpeg
elif [ "$1" == "rpmfusion" ]; then
        sudo dnf install ffmpeg python
else
        printf "${RED}Invalid option. Enter either apt or rpmfusion.${NC}\n"
fi
