#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
        sudo apt install boinc-manager boinctui
elif [ "$1" == "dnf" ]; then
        sudo dnf install boinc-manager boinc-tui
elif [ "$1" == "pacman" ]; then
        sudo pacman -S boinc boinc-tui
else
        printf "${RED}Invalid option. Enter either apt, dnf, or pacman.${NC}\n"
fi
