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
echo -e "${RED}NOTE: ${ORNG}This Module will take a while to configure and build the containers${NC}"
echo -e "${LP}Would you like to continue? ${LP}(${YLW}y${LP}/${YLW}n${LP})${NC}"
read CONT
if [[ ${CONT} == "n" ]]; then
    cd /opt/sifter
    ./sifter -d
fi
if [[ -f '/opt/pulsar/web.env' ]]; then
    echo -e "${URED}"
    echo -e "Your login credentials are:"
    cat /opt/pulsar/web.env
    echo -e "${NC}"
fi
sleep 5
sleep 420 & xterm -e sudo ./install.sh &
sleep 10 
echo "    =========================="
cd /opt/sifter
sifter -m
##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################
