#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
        sudo apt install htop neofetch screenfetch stress s-tui tmux uptimed
elif [ "$1" == "dnf" ]; then
        sudo dnf install htop neofetch screenfetch stress tmux uptimed
elif [ "$1" == "pacman" ]; then
        sudo pacman -S s-tui tmux
elif [ "$1" == "yum" ]; then
        sudo yum tmux
else
        printf "${RED}Invalid option. Enter either apt, dnf, pacman, or yum.${NC}\n"
fi
