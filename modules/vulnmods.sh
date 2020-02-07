#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${RED}"
figlet -f mini "Vulnerability-Focused Modules"
echo -e "${ORNG}"
PS3='What would you like to do?'
        options=("Flan" "RapidScan" "Yuki-Chan" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                          "Flan")
                              ./modules/webmods/dirb.sh
                              ;;

                          "RapidScan")
                              ./modules/webmods/nikto.sh
                              ;;

                          "Yuki-Chan")
                              ./modules/webmods/widow.sh
                              ;;

                          "Back")
                              ./modules/module.sh
                              ;;

                          "Quit")
                              exit
                              ;;
                  esac
          done
          echo -e "${NC}"
