#!/bin/bash
#NB: backticks ( ` )
# surround cat ~/pingtest.txt
ORNG='\033[0;35m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
PPL='\033[0;35m'
RED='\033[0;31m'

echo -e "${RED}"
figlet "..SifteR.."
echo -e "${ORNG}////////========s1l3nt78========\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\${NC}"
echo -e "${LP}==Hit Ctrl + c at any time to quit Sifter==${NC}"
arg=$1
PS3='What would you like to do?'
        options=("Check" "Edit List" "Parse Results to Modules" "Update" "Quit")
        select opt in "${options[@]}"
        do
            case $opt in
                "Check")
                    ./modules/netmods/check.sh
                    ;;

                "Edit List")
                    ./modules/netmods/editor.sh
                    ;;

                "Parse Results to Modules")
                    ./modules/module.sh
                    ;;

		            "Update")
		                echo -e "${ORNG}"
                    figlet -f mini "Checking for updates"
                    echo -e "${NC}"
                    cd /opt/sifter
                    git fetch
                    git pull
                    echo -e "${W}Done!${NC}"
                    ;;

                "Quit")
                    exit
                    ;;
            esac
        done
