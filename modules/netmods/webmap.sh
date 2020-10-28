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

echo -e "${ORNG}"
figlet -f mini "WebMap"
echo -e "${NC}"
sudo docker start webmap
echo -e "${YLW}Please enter the target IP or block: ${NC}"
read TAR
TKN=$(cat /opt/WebMap/.token)
BRWS=$(cat /opt/WebMap/.browser)
echo -e "${YLW}Your WebMap panel login token is: ${LBBLUE}${TKN}${NC}"
sudo nmap -sT -A -T4 -oX /tmp/webmap/myscan.xml ${TAR} &
sleep 5
${BRWS} http://localhost:8000
echo -e "${RED}NOTE: ${YLW}Please enter ${URED}stop${NC} ${YLW}when you are done with WebMap:${NC}"
read DONE
if [[ ${DONE} == "stop" ]]; then
	sudo docker stop webmap
fi

##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################