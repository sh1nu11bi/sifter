#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'

cd /apps/NeverMore
echo -e "${ORNG}"
figlet -f mini "NeverMore"
echo -e "${NC}"
sudo ./NeverMore
sleep 2
cd /opt/sifter
sifter -m

##########################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________##########################