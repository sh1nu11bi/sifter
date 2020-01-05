#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${ORNG}Dirb${NC}"
echo -e "${ORNG}*****${NC}"
cat files/pingtest_pass.txt
echo -e "${W}Please copy and paste in your target site${NC}"
read TARGET
echo "================================================================================================="
dirb $TARGET -f
echo "================================================================================================="
./modules/module_runner.sh
