#!/bin/bash

if [ "$1" == "apt" ]; then
        sudo apt install nfs-common
elif [ "$1" == "dnf" ]; then
        sudo dnf install nfs-utils
else
        echo "Invalid option. Enter either apt or dnf"
fi
