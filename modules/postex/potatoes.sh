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

echo -e "${RED}"
figlet Potatoes
echo -e "${NC}"
echo -e "${ORNG}Would you like to use BadPotato or SweetPotato? ${YLW}(b/s)"
read TOE
if [[ ${TOE} == "b" ]]; then
	cp modules/postex/Potatoes/BadPotato.exe -t /home/$USER/Desktop
	echo -e "${YLW} BadPotato.exe has been copied to your Desktop\nUpload it to an open session on target machine to use.${NC}"
	echo ""
	echo "============================================="
	echo -e "${ORNG}Usage:\n Run your program using BadPotato for System Privileges.\n ${RED}eg. ${YLW} BadPotato.exe minikatz.exe${NC}"
	echo "============================================="
	echo ""
	echo -e "${LP}When ready hit, ${LGRY} enter${NC}"
	read RANDOM
else
	cp modules/postex/Potatoes/SweetPotato.exe -t /home/$USER/Desktop
	cp modules/postex/Potatoes/NtApiDotNet.dll -t /home/$USER/Desktop
	echo -e "${ORNG} SweetPotato.exe & NtApiDotNet.dll ${YLW} have been copied to your Desktop\nUpload it to an open session on target machine to use.${NC}"
	echo ""
	echo "============================================="
	echo -e "${ORNG}Usage:\n Run your program using SweetPotato for System Privileges.\n ${RED}NOTE: ${YLW}Run ${ORNG}SweetPotato.exe --help ${YLW}for escalation options on target session${NC}"
	echo "============================================="
	echo ""
	echo -e "${LP}When ready hit, ${LGRY} enter${NC}"
	read RANDOM
fi
cd /opt/sifter
sifter -m


##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################