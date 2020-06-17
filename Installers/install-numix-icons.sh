#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
		sudo apt install numix-blue-gtk-theme numix-gtk-theme numix-icon-theme numix-icon-theme-circle
elif [ "$1" == "dnf" ]; then
        sudo dnf install numix-icon-theme-circle
elif [ "$1" == "pacman" ]; then
        sudo pacman -S xfce-theme-numix-reborn
else
        printf "${RED}Invalid option. Enter either apt, dnf, or pacman.${NC}\n"
fi


