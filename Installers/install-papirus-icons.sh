#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
		sudo apt install papirus-icon-theme
elif [ "$1" == "pacman" ]; then
        sudo pacman -S papirus-icon-theme
else
        printf "${RED}Invalid option. Enter either apt or pacman.${NC}\n"
fi


