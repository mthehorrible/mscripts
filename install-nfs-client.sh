#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
        sudo apt install nfs-common
elif [ "$1" == "dnf" ]; then
        sudo dnf install nfs-utils
else
        printf "${RED}Invalid option. Enter either apt or dnf.${nc}\n"
fi
