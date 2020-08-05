#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'

cd /opt/rengine
echo -e "${RED}"
figlet -f mini "       reNgine"
echo -e "${NC}"
echo "   ================================"
xterm -e sudo make up & 
echo -e "${YLW}When firefox opens reNgine may not be finished building\nJust wait until the reNgine build in xterm has finished then reload firefox${NC}"
sleep 420
xterm -e firefox https://127.0.0.1:7443 &
sleep 30
echo "   ================================"
cd /opt/sifter
sifter -m

##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################
