#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
		sudo apt install keepassxc
elif [ "$1" == "ppa" ]; then
        sudo add-apt-repository ppa:phoerious/keepassxc
        sudo apt install keepassxc
elif [ "$1" == "snap" ]; then
        sudo snap install keepassxc
else
        printf "${RED}Invalid option. Enter either apt, ppa, or snap.${NC}\n"
fi
