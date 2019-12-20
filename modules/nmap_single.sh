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
			cat files/host_list.txt
			echo -e "${W}Please copy and paste in your target${NC}"
			read TARGET
			echo "================================================================================================="
			sudo nmap -p- -Pn -O -A $TARGET
			echo "================================================================================================="
			./modules/module_runner.sh
			;;
			
		"Common Vulnerabilities")
			cat files/host_list.txt
			echo -e "${W}Please copy and paste in your target${NC}"
			read TARGET
			echo "================================================================================================="
			sudo nmap -sS -Pn -O -A -sV $TARGET
			echo "================================================================================================="
			./modules/module_runner.sh
			;;
			
		"UDP Port Scan")
			cat files/host_list.txt
			echo -e "${W}Please copy and paste in your target${NC}"
			read TARGET
			echo "================================================================================================="
			sudo nmap -sU -Pn -O -A $TARGET
			echo "================================================================================================="
			./modules/module_runner.sh
			;;

		"Back")
			./modules/module_runner.sh
			;;
esac
done
