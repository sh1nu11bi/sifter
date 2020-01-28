#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'
YLW='\033[1;33m'
nikto_multi(){
	nikto -url files/pingtest_pass.txt
}
nikto_single(){
	echo -e "${W}Please enter your target.${NC}"
	read TARGET
	sleep 1
	nikto -host ${TARGET}
}

echo -e "${ORNG}Nikto${NC}"
echo -e "${ORNG}******${NC}"
echo -e "${W}Would you like to run Nikto against a Single target or against your target List?(s/l)${NC}"
read ANS
sleep 1
if [[ ${ANS} == s ]] || [[ ${ANS} == S ]]; then
	nikto_single
else 
	nikto_multi
fi
echo "==============================================================================================="
sleep 5
echo "==============================================================================================="
./modules/module_runner.sh
