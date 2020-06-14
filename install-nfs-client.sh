#!/bin/bash

#Set colors
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
NC='\033[0m' # No Color

#Name
app="NFS Client"

#Commands
apt="sudo apt install nfs-common"
dnf="sudo dnf install nfs-utils"
#pacman="sudo pacman -S"

function menu 
{
printf "\n${MAGENTA}$app${NC}\n\n"
option=0
until [ "$option" = "x" ]; do
echo "  1.) Install $app (apt)"
echo "  2.) Install $app (dnf)"
#echo "  3.) Install $app (pacman)"
echo "  x.) Quit"

printf "\n${MAGENTA}Enter choice:${NC}\n\n"
read option
echo ""
case $option in
    1 ) clear; $apt; exit;;
    2 ) clear; $dnf; exit;;
#    3 ) clear; $pacman; exit;;
    x ) clear; exit;;
    * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
esac
done
}

if [ "$1" == "apt" ]; then
        $apt
elif [ "$1" == "dnf" ]; then
        $dnf
elif [ "$1" == "pacman" ]; then
        $pacman
else
        clear; menu
fi
