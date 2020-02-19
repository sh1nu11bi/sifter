#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
W='\033[1;37m'
YLW='\033[1;33m'
ip_add() {
  echo -e "${W}Please enter your target:${NC}"
  read IP_ANS
  sleep 1
  echo "$IP_ANS" >> files/host_list.txt
  ip_q
}
ip_q() {
  echo -e "${W}Would you like to add another?(y/n)${NC}"
	read ANS
	sleep 1
	if [[ $ANS == y ]]; then
	  ip_add
	else
	  ./modules/menu.sh
	fi
}

arg=$1
echo -e "${RED}List Editor${NC}"
echo -e "${RED}************${NC}"

echo -e "${LBBLUE}"
cat files/host_list.txt
echo -e "${NC}"
        PS3='What would you like to do?'
        options=("Check" "List" "Add" "Remove" "Back")
        select opt in "${options[@]}"
        do
                case $opt in
                        "Check")
                          ./modules/netmods/check.sh
                          sleep 5
                          ./modules/netmods/editor.sh
                                        ;;

                        "List")
                            echo -e "${LBBLUE}"
                            cat files/host_list.txt
                            echo -e "${NC}"
                            sleep 5
                            ./modules/netmods/editor.sh
                            ;;

                        "Add")
                            echo -e "${W}Type the IP or hostname you would like to add${NC}"
			                      sleep 5
                            read TARGET
                            echo "$TARGET" >> files/host_list.txt
                            echo -e "${W}Target Added!${NC}"
                            ip_q
                            ;;

                        "Remove")
                            nano files/host_list.txt
                            echo -e "${W}Target Removed!${NC}"
                            sleep 5
                            ./modules/netmods/editor.sh
                            ;;

                        "Back")
                            ./modules/module.sh
                            ;;
                esac
        done
