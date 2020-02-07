#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${RED}"
figlet -f mini "Web-Focused Modules"
echo -e "${ORNG}"
PS3='What would you like to do?'
        options=("Dirb" "Nikto" "BlackWidow" "WPScan" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                          "Dirb")
                              ./modules/webmods/dirb.sh
                              ;;

                          "Nikto")
                              ./modules/webmods/nikto.sh
                              ;;

                          "BlackWidow")
                              ./modules/webmods/widow.sh
                              ;;

                          "WPScan")
                              ./modules/webmods/wpscan.sh
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
