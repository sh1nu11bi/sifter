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

cd /opt/HoneyTel
echo -e "${RED}"
figlet HoneyTel
echo -e "${NC}"
echo -e "${W}3 Windows will open in xterm, leaving them running until you are finished with HoneyTel${NC}"
sleep 2
kdialog --geometry 600x800 --textbox .info &
cat .info
xterm -e sudo python backend.py &
xterm -e sudo python honeypot.py &
sleep 10
xterm -e firefox http://127.0.0.1:5000 &
sleep 2
reset
cd /opt/sifter
./sifter -m