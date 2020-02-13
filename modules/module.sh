#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'
cred_mods(){
  echo -e "${RED}"
  figlet -f mini "Info-Focused Modules"
  echo -e "${ORNG}"
  PS3='What would you like to do?'
          options=("theHarvester" "Back" "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
                            "theHarvester")
                                ./modules/credmods/harvester.sh
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
  PS3='What would you like to do?'
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
}
web_mods(){
  echo -e "${RED}"
  figlet -f mini "Web-Focused Modules"
  echo -e "${ORNG}"
  PS3='What would you like to do?'
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
  sleep 5
  ./modules/exmods/ar3.sh
}

# Start of Module Script
echo -e "${RED}Modules${NC}"
echo -e "${RED}*******${NC}"
echo -e "${ORNG}"
PS3='What would you like to do?'
        options=("Info-Focused Modules" "Domain-Focused Modules" "Network-Focused Modules" "Web-Focused Modules" "Vulnerability-Focused Modules" "Exploitation(Beta)" "Back" "Quit")
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

                        "Back")
                            ./modules/menu.sh
			                      ;;

                        "Quit")
                            exit 0
                            ;;
                esac
        done
echo -e "${NC}"
