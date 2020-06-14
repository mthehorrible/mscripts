#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
		sudo apt install gparted
elif [ "$1" == "pacman" ]; then
        sudo pacman -S gparted
else
        printf "${RED}Invalid option. Enter either apt or pacman.${NC}\n"
fi


