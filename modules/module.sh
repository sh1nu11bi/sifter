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
  PS3='What tool would you like to use?'
          options=("DnsTwist \n Sub-Domain Bruteforcer for Typo Squatting Detection" "DomainFuzz \n Sub-Domain Bruteforcer" "Sublist3r \n Sub-Domain Enumerator" "Back" "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
                            "DnsTwist \n Sub-Domain Bruteforcer for Typo Squatting Detection")
                                ./modules/dommods/dnstwist.sh
                                ;;

                            "DomainFuzz \n Sub-Domain Bruteforcer")
                                ./modules/dommods/domainfuzz.sh
                                ;;

                            "Sublist3r \n Sub-Domain Enumerator")
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
          options=("Konan \n Sub-directory fuzzer" "Nikto" "BlackWidow \n High-Powered Web Crawler/OWASP Fuzzer" "WPScan" "Back" "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
                            "Konan \n Sub-directory fuzzer")
                                ./modules/webmods/konan.sh
                                ;;

                            "Nikto")
                                ./modules/webmods/nikto.sh
                                ;;

                            "BlackWidow \n High-Powered Web Crawler/OWASP Fuzzer")
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
        options=("ActiveReign" "iSpy \n Scans & Exploits Microsft 'Blue' Vulns" "ShodanSploit \n Shodan searches from within the terminal" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
			               "ActiveReign")
			                    ./modules/exmods/ar3.sh
			                    ;;

			               "iSpy \n Scans & Exploits Microsft 'Blue' Vulns")
			                    ./modules/exmods/ispy.sh
			                    ;;

                           "ShodanSploit \n Shodan searches from within the terminal")
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
        options=("Sitadel \n Web-App Scanner" "wafw00f \n WAF Firewall Detection" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                        "Sitadel \n Web-App Scanner")
                            ./modules/webapps/sitadel.sh
                            ;;

                        "wafw00f \n WAF Firewall Detection")
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
