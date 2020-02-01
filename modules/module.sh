#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${RED}Modules${NC}"
echo -e "${RED}*******${NC}"
PS3='What would you like to do?'
        options=("nMap" "WPScan" "Nikto" "Dirbuster" "BlackWidow" "Yuki-Chan" "Attack Surface Mapper" "theHarvester" "Photon" "RapidScan" "Sublist3r" "Flan" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                        "nMap")
                            ./modules/nmap.sh
                            ;;

                        "WPScan")
                            ./modules/wpscan.sh
                            ;;

                        "Nikto")
                            ./modules/nikto.sh
                            ;;

                        "Dirbuster")
                            ./modules/dirb.sh
                            ;;

                        "BlackWidow")
                            ./modules/widow.sh
                            ;;

                        "Yuki-Chan")
                            ./modules/yuki.sh
                            ;;

                        "Attack Surface Mapper")
                            ./modules/asm.sh
                            ;;

                        "theHarvester")
                            ./modules/harvester.sh
                            ;;

                        "Photon")
                            ./modules/photon.sh
                            ;;

                        "Sublist3r")
                            ./modules/sublist3r.sh
                            ;;

                        "Flan")
                            ./modules/flan.sh
                            ;;

                        "Back")
                            ./modules/menu.sh
			                ;;

                        "Quit")
                            exit 
                            ;;
                esac
        done
