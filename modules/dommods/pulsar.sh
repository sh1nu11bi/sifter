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
if [[ -f '/opt/pulsar/web.env' ]]; then
    echo -e "${URED}"
    echo -e "Your login credentials are:"
    cat /opt/pulsar/web.env
    echo -e "${NC}"
fi
sleep 10
sudo ./install.sh
sleep 10 
echo "    =========================="
cd /opt/sifter
sifter -m
##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################
