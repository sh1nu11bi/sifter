#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
W='\033[1;37m'

arg=$1
echo -e "${RED}List Editor${NC}"
echo -e "${RED}************${NC}"

cat files/host_list.txt

        PS3='What would you like to do?'
        options=("Check" "List" "Add" "Remove" "Back")
        select opt in "${options[@]}"
        do
                case $opt in
						"Check")
							./modules/ping_check.sh 
							sleep 5
							./modules/list_editor.sh
                            ;;
                        
                        "List")
                            cat files/host_list.txt
                            sleep 5
                            ./modules/list_editor.sh
                            ;;
                        
                        "Add")
                            echo -e "${W}Type the IP or hostname you would like to add${NC}"
			    sleep 5
                            read TARGET
                            echo "$TARGET" >> files/host_list.txt
                            echo -e "${W}Target Added!${NC}"
                            sleep 5
                            ./modules/list_editor.sh
                            ;;
                            
                        "Remove")
                            nano files/host_list.txt
                            echo -e "${W}Target Removed!${NC}"
                            sleep 5
                            ./modules/list_editor.sh
                            ;;
                        
                        "Back")
                            ./modules/sifter_menu.sh
                            ;;
                esac
        done
