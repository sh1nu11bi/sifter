#!/bin/bash

ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'

echo -e "${ORNG}Blackwidow${NC}"
echo -e "${ORNG}***********${NC}"
options=("Crawl the target domain & fuzz all parameters (Verbose enabled)" "Fuzz all GET parameters for common OWASP Vulns (Verbose enabled)" "Back")
select opts in "${options[@]}"
do
    case $opts in
        "Crawl the target domain & fuzz all parameters (Verbose enabled)")
            cat files/pingtest_pass.txt
            echo -e "${W}Please copy and paste in your target site${NC}"
				read TARGET1
            echo -e "${W}How many levels would you like to crawl?${NC}"
				read TARGET2
            echo -e "${W}Would you like to fuzz all possible parameters for OWASP vulns? (y/n)${NC}"
				read TARGET3
			echo -e "${LP}Running Blackwidow with the following command, 'blackwidow -u $TARGET1 -l $TARGET2 -s $TARGET3 -v y'${NC}"
				sleep 10
			sudo blackwidow -u $TARGET1 -l $TARGET2 -s $TARGET3 -v y
            ./modules/blackwidow_script.sh
            ;;
        
        "Fuzz all GET parameters for common OWASP Vulns (Verbose enabled)")
            cat files/pingtest_pass.txt
            echo -e "${W}Please copy and paste in your target site and add GET parameters${NC}"
            echo -e "${LP}e.g. https://test.com/users.php?user=1&admin=true${NC}"
	    sleep 5
	    read TARGET
	    echo -e "${W}Running injectx script with the following argument, ${LP}'python injectx.py -u $TARGET -v y'${NC}"
	    sleep 10
            sudo python injectx.py -u $TARGET -v y
            ./modules/blackwidow_script.sh
            ;;
        
        "Back")
            ./modules/module_runner.sh
            ;;
    esac
done



            
