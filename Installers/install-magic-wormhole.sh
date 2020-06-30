#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
		sudo apt install magic-wormhole
elif [ "$1" == "dnf" ]; then
        sudo dnf install magic-wormhole
elif [ "$1" == "snap" ]; then
        sudo snap install wormhole
else
        printf "${RED}Invalid option. Enter either apt, dnf, or snap.${NC}\n"
fi


