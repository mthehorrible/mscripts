#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
    wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
    sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'
    sudo apt update && sudo apt install vivaldi-stable
elif [ "$1" == "rmapt" ]; then
    sudo apt remove vivaldi-stable
    sudo rm /etc/apt/sources.list.d/vivaldi.list
elif [ "$1" == "dnf" ]; then
    sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
    sudo dnf install vivaldi-stable
else
        printf "${RED}Invalid option. Enter either apt or dnf.${NC}\n"
fi
