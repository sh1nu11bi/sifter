#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${RED}"
figlet -f mini "Domain-Focused Modules"
echo -e "${NC}"
PS3='What would you like to do?'
        options=("DnsTwist" "DomainFuzz" "Sublist3r" "Back" "Quit")
        select opt in "${options[@]}"
        echo -e "${ORNG}"
        do
                case $opt in
                          "DnsTwist")
                              ./modules/dommods/dnstwist.sh
                              ;;

                          "DomainFuzz")
                              ./modules/dommods/domainfuzz.sh
                              ;;

                          "Sublist3r")
                              ./modules/dommods/sublist3r.sh
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
