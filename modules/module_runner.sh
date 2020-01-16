#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

echo -e "${RED}Modules${NC}"
echo -e "${RED}*******${NC}"
PS3='What would you like to do?'
        options=("nmap" "WPScan" "Nikto" "Dirbuster" "BlackWidow" "Yuki-Chan" "Attack Surface Mapper" "Back")
        select opt in "${options[@]}"
        do
                case $opt in
                        "nmap")
                            ./modules/nmap_script.sh
                            ;;
                            
                        "WPScan")
                            ./modules/wpscan_script.sh
                            ;;
                            
                        "Nikto")
                            ./modules/nikto_script.sh
                            ;;
                            
                        "Dirbuster")
                            ./modules/dirb_script.sh
                            ;;
                            
                        "BlackWidow")
                            ./modules/blackwidow_script.sh
                            ;;
                        
						"Yuki-Chan")
				    		./modules/yuki_script.sh
				    		;;
			    			
						"Attack Surface Mapper"
							./modules/asm_module.sh
							;;
							
                        "Back")
                            ./modules/sifter_menu.sh
			    			;;
                esac
        done
