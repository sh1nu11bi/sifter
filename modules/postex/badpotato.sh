#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'
LGRY='\033[0;37m'
INV='\e[7m'
BRED='\033[1;31m'
UPURPLE='\033[4;35m'
UBLUE='\033[4;34m'
URED='\033[4;31m'

cp modules/exmods/BadPotato.exe -t /home/$USER/Desktop
echo -e "${RED}"
figlet BadPotato
echo -e "${NC}"
echo -e "${YLW} BadPotato.exe has been copied to your Desktop\nUpload it to an open session on target machine to use.${NC}"
echo ""
echo "============================================="
echo -e "${ORNG}Usage:\n Run your program use BadPotato for System Privileges.\n ${RED}eg. ${YLW} BadPotato.exe minikatz.exe${NC}"
echo "============================================="
echo ""
echo -e "${LP}When ready hit, ${LGRY} enter${NC}"
read RANDOM
cd /opt/sifter
sifter -m


##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################