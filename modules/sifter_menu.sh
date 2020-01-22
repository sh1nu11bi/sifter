#!/bin/bash
#NB: backticks ( ` )
# surround cat ~/pingtest.txt
ORNG='\033[0;35m'
NC='\033[0m'

#echo -e "${ORNG}Sifter${NC}"
figlet "$ifteR"
echo -e "${ORNG}****************************========================*******************************${NC}"
arg=$1
PS3='What would you like to do?'
        options=("Check" "Edit List" "Parse Results to Modules" "Quit")
        select opt in "${options[@]}"
        do
            case $opt in
                "Check")
                    ./modules/ping_check.sh
                    ;;
					
                "Edit List")
                    ./modules/list_editor.sh
                    ;;
					
                "Parse Results to Modules")
                    ./modules/module_runner.sh
                    ;;
					
                "Quit")
                    exit 0
                    ;;
            esac
        done

