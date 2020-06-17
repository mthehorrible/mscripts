#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
        sudo apt update && sudo apt upgrade
elif [ "$1" == "dnf" ]; then
        sudo dnf upgrade
elif [ "$1" == "eopkg" ]; then
        sudo eopkg update-repo && sudo eopkg upgrade
elif [ "$1" == "pacman" ]; then
        sudo pacman -Syu
elif [ "$1" == "yum" ]; then
        sudo yum update
elif [ "$1" == "zypper" ]; then
        sudo zypper up
else
        printf "${RED}Invalid option. Enter either apt, dnf, eopkg, pacman, yum, or zypper.${NC}\n"
fi
