#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
		sudo apt install yakuake
elif [ "$1" == "dnf" ]; then
        sudo dnf install yakuake
else
        printf "${RED}Invalid option. Enter either apt or dnf.${NC}\n"
fi


