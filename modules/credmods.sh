#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${RED}"
figlet -f mini "Info-Focused Modules"
echo -e "${NC}"
PS3='What would you like to do?'
        options=("theHarvester" "Back" "Quit")
        select opt in "${options[@]}"
        echo -e "${ORNG}"
        do
                case $opt in
                          "theHarvester")
                              ./modules/credmods/harvester.sh
                              ;;

                          "Back")
                              ./modules/menu.sh
                              ;;

                          "Quit")
                              exit
                              ;;
                  esac
          done
          echo -e "${NC}"
