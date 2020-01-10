#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${ORNG}Yuki-Chan${NC}"
echo -e "${ORNG}***********${NC}"
<<<<<<< HEAD
cat files/pingtest.pass
=======
cat files/pingtest_pass.txt
>>>>>>> 8598350644d2892d3031b556b7c8301c57d271f2
echo -e "${W}Please copy and paste in your target site${NC}"
echo "================================================================================================="
cd /root/yuki
sleep 1
sudo ./startyuki
echo "================================================================================================="
./modules/module_runner.sh
