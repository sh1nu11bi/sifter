#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${ORNG}WPscan${NC}"
echo -e "${ORNG}*******${NC}"
cat files/pingtest_pass.txt
echo -e "${W}Please copy and paste in your target site${NC}"
read TARGET
echo "==================================================================================="
wpscan --url $TARGET --wp-content-dir wp-content -e vp vt u1-10 dbe --api-token 8oTZXNMC2J9l77RxlcrhkMpfqmd3njuQBip1wyyGbtc
echo "==================================================================================="
sleep 5
echo "==================================================================================="
./modules/module_runner.sh
