#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'
cred_mods(){
  echo -e "${RED}"
  figlet -f mini "Info-Focused Modules"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("theHarvester" "SniffingBear" "Osmedeus" "ReconSpider" "Back" "Quit") # "Sunny-Honey \n ssh HoneyPot"
          select opt in "${options[@]}"
          do
                  case $opt in
                            "theHarvester")
                                ./modules/credmods/harvester.sh
                                ;;

                            "SniffingBear")
                                ./modules/credmods/s_bear.sh
                                ;;

                            "Osmedeus")
                                ./modules/credmods/osmedeus.sh
                                ;;
                            
                            "ReconSpider")
                                ./modules/credmods/rspider.sh
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
}
dom_mods(){
  echo -e "${RED}"
  figlet -f mini "Domain-Focused Modules"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("DnsTwist" "DomainFuzz" "Sublist3r" "Back" "Quit")
          select opt in "${options[@]}"
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
                                ./modules/module.sh
                                ;;

                            "Quit")
                                exit
                                ;;
                    esac
            done
            echo -e "${NC}"
}
net_mods(){
  echo -e "${RED}"
  figlet -f mini "Network-Focused Modules"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("Scan for Live-Hosts" "nMap" "Photon" "AttackSurfaceMapper" "Back"  "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
                            "Scan for Live-Hosts")
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
                                ./modules/module.sh
                                ;;

                            "Quit")
                                exit
                                ;;
                    esac
            done
            echo -e "${NC}"
}
vuln_mods(){
  echo -e "${RED}"
  figlet -f mini "Vulnerability-Focused Modules"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("Flan" "RapidScan" "Yuki-Chan" "Back" "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
                            "Flan")
                                ./modules/vulnscanners/flan.sh
                                ;;

                            "RapidScan")
                                ./modules/vulnscanners/rapidscan.sh
                                ;;

                            "Yuki-Chan")
                                ./modules/vulnscanners/yuki.sh
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
}
web_mods(){
  echo -e "${RED}"
  figlet -f mini "Web-Focused Modules"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("Konan" "Nikto" "BlackWidow" "WPScan" "Back" "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
                            "Konan")
                                ./modules/webmods/konan.sh
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
}
ex_mods(){
  echo -e "${RED}"
  figlet -f mini "Exploitation Modules"
  echo -e "${NC}"
  PS3='What tool would you like to use?'
        options=("ActiveReign" "TigerShark" "iSpy" "ShodanSploit" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
			               "ActiveReign")
			                    ./modules/exmods/ar3.sh
			                    ;;

                           "TigerShark")
                                ./modules/exmods/tiger.sh
                                ;;

			               "iSpy")
			                    ./modules/exmods/ispy.sh
			                    ;;

                           "ShodanSploit")
                                ./modules/exmods/ssploit.sh
                                ;;

			               "Back")
                                ./modules/module.sh
                                ;;

                           "Quit")
                                exit 0
                                ;;
                esac
        done
}
webapps(){
  echo -e "${RED}"
  figlet -f mini "WebApp Modules"
  echo -e "${NC}"
  PS3='What tool would you like to use?'
        options=("Sitadel" "wafw00f" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                        "Sitadel")
                            ./modules/webapps/sitadel.sh
                            ;;

                        "wafw00f")
                            ./modules/webapps/wafw00f.sh
                            ;;

                        "Back")
                            ./modules/module.sh
                            ;;

                        "Quit")
                            exit 0
                            ;;
                esac
        done
}

# Start of Module Script
echo -e "${RED}Modules${NC}"
echo -e "${RED}*******${NC}"
echo -e "${ORNG}"
PS3='What would you like to do?'
        options=("Info-Focused Modules" "Domain-Focused Modules" "Network-Focused Modules" "Web-Focused Modules" "Vulnerability-Focused Modules" "Exploitation(Beta)" "WebApp-Focused Modules" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                        "Info-Focused Modules")
                            cred_mods
                            ;;

                        "Domain-Focused Modules")
                            dom_mods
                            ;;

                        "Network-Focused Modules")
                            net_mods
                            ;;

                        "Web-Focused Modules")
                            web_mods
                            ;;

                        "Vulnerability-Focused Modules")
                            vuln_mods
                            ;;

                        "Exploitation(Beta)")
                            ex_mods
                            ;;

			            "WebApp-Focused Modules")
			                webapps
			                ;;

                        "Back")
                            ./modules/menu.sh
			                ;;

                        "Quit")
                            exit 0
                            ;;
                esac
        done
echo -e "${NC}"
