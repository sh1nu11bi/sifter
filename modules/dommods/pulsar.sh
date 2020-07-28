#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
URED='\033[4;31m'

cd /opt/pulsar
echo -e "${RED}"
figlet -f mini "Pulsar"
echo -e "${NC}"
echo -e "${URED}NOTE:${ORNG} If this is the first time running pulsar\nPlease ensure to save the follow login credentials for Pulsar WebUI${NC}"
sleep 10
sudo ./install.sh
sleep 10 
echo "    =========================="
cd /opt/sifter
sifter -m
##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################
