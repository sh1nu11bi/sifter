#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'

echo -e "${W}Would you like to run Nmap against a singular target or all the targets on the hostlist?${NC}"
options=("Single Target" "Multiple Targets" "Back")
select opts in "${options[@]}"
do
	case $opts in
		"Single Target")
			./modules/nmap_single.sh
			;;

		"Multiple Targets")
			./modules/nmap_multi.sh
			;;
			
		"Back")
			./modules/module_runner.sh
			;;
	esac
done
