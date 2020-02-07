#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${RED}"
figlet -f mini "Network-Focused Modules"
echo -e "${ORNG}"
PS3='What would you like to do?'
        options=("Live-Host Scan" "nMap" "Photon" "AttackSurfaceMapper" "Back"  "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                          "Live-Host Scan")
                              ./modules/netmods/check.sh
                              ;;

                          "nMap")
                              ./modules/netmods/nmap.sh
                              ;;

                          "Photon")
                              ./modules/netmods/photon.sh
                              ;;

                          "AttackSurfaceMapper")
                              ./modules/netmods/asm.sh
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
