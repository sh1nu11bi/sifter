#!/bin/bash
LPATH='/opt/sifter/'
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'
LGRY='\033[0;37m'
INV='\e[7m'
BRED='\033[1;31m'
UPURPLE='\033[4;35m'
UBLUE='\033[4;34m'
URED='\033[4;31m'
webappinfo(){
  cd /opt/sifter
  echo -e "${RED}"
  figlet -f mini "WebAppplication Scanners"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
        options=("Sitadel" "BFAC" "AapFinder" "OneFind" "XSStrike" "XSS-Freak" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                        "Sitadel")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/sitadel.info
                            cat /opt/sifter/info/sitadel.info
                            ;;

                        "AapFinder")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/aapfinder.info
                            cat /opt/sifter/info/aapfinder.info
                            ;;

                        "BFAC")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/bfac.info
                            cat /opt/sifter/info/bfac.info
                            ;;

                        "OneFind")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/onefind.info
                            cat /opt/sifter/info/onefind.info
                            ;;

                         "XSStrike")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/xsstrike.info
                            cat /opt/sifter/info/xsstrike.info
                            ;;

                        "XSS-Freak")
                             kdialog --geometry 600x800 --textbox /opt/sifter/info/XSS-Freak.info
                            cat /opt/sifter/info/XSS-Freak.info
                            ;;

                        "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

                        "Quit")
                            exit
                            ;;
                esac
        done
    echo -e "${NC}"
}
# Info Module-Category Selection
credinfo(){
    cd /opt/sifter
    echo -e "${RED}"
    figlet -f mini "Information Gatherers"
    echo -e "${ORNG}"
    PS3='Which module category would you like to use?'
            options=("Seeker" "xRay" "Maryam" "theHarvester" "Osmedeus" "ReconSpider" "CredNinja" "" "Back" "Quit")
            select opt in "${options[@]}"
            do
                    case $opt in
                        "Omnibus")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/omnibus.info
                            cat /opt/sifter/info/omnibus.info
                            ;;

                        "Seeker")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/seeker.info
                            cat /opt/sifter/info/seeker.info
                            ;;

                        "xRay")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/xray.info
                            cat /opt/sifter/info/xray.info
                            ;;

                        "theHarvester")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/theHarvester.info
                            cat /opt/sifter/info/theHarvester.info
                            ;;

                        "Osmedeus")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/osmedeus.info
                            cat /opt/sifter/info/osmedeus.info
                            ;;

                        "ReconSpider")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/reconspider.info
                            cat /opt/sifter/info/reconspider.info
                            ;;

                        "Maryam")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/maryam.info
                            cat /opt/sifter/info/maryam.info
                            ;;

                        "CredNinja")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/credninja.info
                            cat /opt/sifter/info/credninja.info
                            ;;

                        "Spiderfoot")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/spiderfoot.info
                            cat /opt/sifter/info/spiderfoot.info
                            ;;

                        "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

                        "Quit")
                             exit
                                ;;
                    esac
            done
        echo -e "${NC}"

}
# HoneyPot Scanners
honey_info(){
    cd /opt/sifter
    echo -e "${RED}"
    figlet -f mini "HoneyPot Detection Systems"
    echo -e "${LP}This module focuses on Enterprises and their online presence"
    echo -e "${YLW}eg. web-directories, enterprise email addresses, etc."
    echo -e "${ORNG}"
    PS3='What tool would you like to use?'
            options=("HoneyTel" "Back" "Quit")
            select opt in "${options[@]}"
            do
                    case $opt in
                            "HoneyTel")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/honeytel.info
                            cat /opt/sifter/info/honeytel.info
                            ;;

                            "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

                            "Quit")
                                exit
                                ;;
                    esac
            done
        echo -e "${NC}"

}
# Domain Modules
dominfo(){
  cd /opt/sifter
  echo -e "${RED}"
  figlet -f mini "Domain Recon Gathering"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("aSnip" "Armory" "SayDog" "Back" "Quit") 
          select opt in "${options[@]}"
          do
                  case $opt in
                        "Armory")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/armory.info
                            cat /opt/sifter/info/armory.info
                            ;;

                        "aSnip")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/asnip.info
                            cat /opt/sifter/info/asnip.info
                            ;;

                        "SayDog")
                            kdialog --feometry 600x800 --textbox /opt/sifter/info/saydog.info
                            cat /opt/sifter/info/saydog.info
                            ;;


                           "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

                            "Quit")
                                exit
                                ;;
                    esac
            done
            echo -e "${NC}"
}

# Vulnerability Scanners
vulninfo(){
  cd /opt/sifter
  echo -e "${RED}"
  figlet -f mini "Vulnerability Scanners"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("Flan" "RapidScan" "Yuki-Chan" "Back" "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
                            "Flan")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/flan.info
                            cat /opt/sifter/info/flan.info
                            ;;

                        "RapidScan")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/rapidscan.info
                            cat /opt/sifter/info/rapidscan.info
                            ;;

                        "Yuki-Chan")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/yuki.info
                            cat /opt/sifter/info/yuki.info
                            ;;

                           "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

                            "Quit")
                                exit
                                ;;
                    esac
            done
            echo -e "${NC}"
}
# Web-Focused Modules
web_netinfo(){
  cd /opt/sifter
  echo -e "${RED}"
  figlet -f mini "Web Scanners & Network Modules"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
          options=("BlackWidow" "wafw00f" "AttackSurfaceMapper" "" "Back" "Quit")
          select opt in "${options[@]}"
          do
                  case $opt in
			            "BlackWidow")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/blackwidow.info
                            cat /opt/sifter/info/blackwidow.info
                            ;;
                        
                        "AttackSurfaceMapper")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/asm.info
                            cat /opt/sifter/info/asm.info
                            ;;

                        "wafw00f")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/wafw00f.info
                            cat /opt/sifter/info/wafw00f.info
                            ;;

                        "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

                        "Quit")
                            exit
                            ;;
                    esac
            done
            echo -e "${NC}"
}
# Post Exploitation
postinfo(){
    echo -e "${RED}"
    figlet -f mini "Post-Exploitation"
    echo -e "${NC}"
    PS3='What tool would you like to use?'
        options=("Omega" "WinPwn" "ACLight2" "Back")
        select opt in "${options[@]}"
        do
            case $opt in
                "Omega")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/omega.info
                            cat /opt/sifter/info/omega.info
                            ;;                    

                "WinPwn")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/WinPwn.info
                            cat /opt/sifter/info/WinPwn.info
                            ;;
                
                "ACLight")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/aclight.info
                            cat /opt/sifter/info/aclight.info
                            ;;

               "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

            esac
        done
    echo -e "${NC}"
}
# Exploitation Modules
exmodinfo(){
  cd /opt/sifter
  echo -e "${RED}"
  figlet -f mini "Exploitation Tools"
  echo -e "${ORNG}"
  PS3='What tool would you like to use?'
        options=("MkCheck" "BruteDUM" "ActiveReign" "NekoBot" "xShock" "VulnX" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                    "BruteDUM")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/brutedum.info
                            cat /opt/sifter/info/brutedum.info
                            ;;

                    "ActiveReign")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/activereign.info
                            cat /opt/sifter/info/activereign.info
                            ;;

                    "MkCheck")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/mkcheck.info
                            cat /opt/sifter/info/mkcheck.info
                            ;;

                    "NekoBot")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/nekobot.info
                            cat /opt/sifter/info/nekobot.info
                            ;;

                    "xShock")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/xshock.info
                            cat /opt/sifter/info/xshock.info
                            ;;

                    "VulnX")
                            kdialog --geometry 600x800 --textbox /opt/sifter/info/vulnx.info
                            cat /opt/sifter/info/vulnx.info
                            ;;
                    
                    "Back")
                            cd /opt/sifter
                            ./sifter -m
                            ;;

                    "Quit")
                        exit
                        ;;

                esac
        done
    echo -e "${NC}"
}
echo -e "${URED}Modules${NC}"
echo -e "${ORNG}"
PS3='What would you like to do?'
        options=("Exploitation Tools" "Post-Exploitation" "Web Scanners & Network Modules" "Vulnerability Scanners" "Domain Recon Gathering" "HoneyPot Detection Systems" "Information Gatherers" "WebAppplication Scanners" "Main Menu" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                        "Information Gatherers")
                            credinfo
                            ;;

                        "Domain Recon Gathering")
                            dominfo
                            ;;

                        "Website Scanners & Enumerators")
                            web_netinfo
                            ;;

                        "Vulnerability Scanners")
                            vulninfo
                            ;;

                        "HoneyPot Detection Systems")
                            honey_info
                            ;;

                        "Exploitation Tools")
                            exmodinfo
                            ;;

			            "WebAppplication Scanners")
			                webappinfo
			                ;;
                            
                        "Post-Exploitation")
                            postinfo
                            ;;

                        "Main Menu")
                            cd /opt/sifter
                            ./sifter
                            ;;

                        "Back")
                        cd /opt/sifter
                        ./sifter -m
                        ;;

                        "Quit")
                            exit
                            ;;
                esac
        done
echo -e "${NC}"