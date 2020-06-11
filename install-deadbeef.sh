#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
        sudo add-apt-repository ppa:starws-box/deadbeef-player
		sudo apt install deadbeef
elif [ "$1" == "dnf" ]; then
		sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
		sudo dnf install deadbeef
elif [ "$1" == "pacman" ]; then
        sudo pacman -S deadbeef
else
        printf "${RED}Invalid option. Enter either apt, dnf, or pacman.${NC}\n"
fi


