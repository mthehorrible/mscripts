#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

if [ "$1" == "apt" ]; then
    sudo apt update
    sudo apt install software-properties-common apt-transport-https wget
    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
    sudo apt update
    sudo apt install code
elif [ "$1" == "dnf" ]; then
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    cat <<EOF | sudo tee /etc/yum.repos.d/vscode.repo
[code]
name=Visual Studio Code
baseurl=https://packages.microsoft.com/yumrepos/vscode
enabled=1
gpgcheck=1
gpgkey=https://packages.microsoft.com/keys/microsoft.asc
EOF
    dnf check-update
    sudo dnf install code
elif [ "$1" == "snap" ]; then
    sudo snap install code
else
        printf "${RED}Invalid option. Enter either apt, dnf, or snap.${NC}\n"
fi
