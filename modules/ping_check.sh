#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
YLW='\033[1;33m'

echo -e "${ORNG}Host Check${NC}"
echo -e "${ORNG}***********${NC}"
rm files/pingtest_raw.pass files/pingtest.pass files/pingtest_pass.txt

for name in `cat files/host_list.txt`

        do
            ping -c 1 $name
                if [[ $? == 0 ]]; then
                    echo -e "\e[95m$name Alive\e[0m" && echo $name >> files/pingtest_raw.pass
                else
                    echo -e "\e[1;31m$name Dead\e[0m" && echo $name >> files/pingtest_raw.fail
                fi
        done

            sleep 5

        echo "============================================================================================================================="

        echo -e "\e[95mPingtest_Pass\e[0m"
        echo $'\e[95m*************\e[0m'
	    cat files/pingtest_raw.pass | sort | uniq > files/pingtest.pass
        echo -e "${YLW}"
	    cat files/pingtest.pass
	    echo -e "${NC}"
	    sed -e 's/^/http:\/\//' files/pingtest.pass > files/pingtest_pass.txt

        echo "============================================================================================================================="

        echo -e "\e[1;31mPingtest_Fail\e[0m"
        echo $'\e[1;31m*************\e[0m'
        cat files/pingtest_raw.fail | sort | uniq > files/pingtest.fail
        echo -e "${YLW}"
	    cat files/pingtest.fail
	    echo -e "${NC}"
        sleep 5
        
        ./modules/sifter_menu.sh
