#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'

echo -e "${ORNG}nmap${NC}"
echo -e "${ORNG}*****${NC}"
options=("Full Port" "Common Vulnerabilities" "UDP Port Scan" "Back")
select opts in "${options[@]}"
do
    case $opts in
        "Full Port")
            sudo nmap -p- -Pn -O -A -iL files/pingtest.pass
            sleep 5
            ./modules/module_runner.sh
            ;;
            
        "Common Vulnerabilities")
            sudo nmap -sS -Pn -O -A -sV -iL files/pingtest.pass
            sleep 5
            ./modules/module_runner.sh
            ;;
            
		"UDP Port Scan")
	    	sudo nmap -sU -Pn -O -A -iL files/pingtest.pass
	    	sleep 5
	    	./modules/module_runner.sh
	    	;;

		"Back")
            ./modules/module_runner.sh
	    	;;
    esac
done
