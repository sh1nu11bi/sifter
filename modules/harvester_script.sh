#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'
YLW='\033[1;33m'
multi_scan() {
    for name in `cat files/pingtest.pass`
        do
            theHarvester -d $name -S 300 -s -e 8.8.8.8 -n -c -b all -f results_${name}.html
        done
}

echo -e "${ORNG}theHarvester${NC}"
echo -e "${ORNG}*************${NC}"
echo -e "${YLW}"
cat files/pingtest.pass
echo -e "${NC}"
echo -e "${W}Would you like to use a single target or the whole list?(s/l)${NC}"
read ANS
sleep 1
if [[ ${ANS} == s ]]; then
    echo -e "${YLW}"
    cat files/pingtest.pass
    echo -e "${NC}"
    echo -e "${W}Please enter your target${NC}"
    read TARGET
    sleep 1
    theHarvester -d ${TARGET} -S 300 -s -e 8.8.8.8 -n -c -b all -f results_${name}.html
else
    multi_scan
fi
./modules/module_runner.sh