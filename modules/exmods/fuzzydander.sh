#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'
# FuzzyDander Install
install(){
    if [[ -d '/root/.wine/drive_c/fuzzbunch' ]]; then
        sleep 1
    else
        git clone https://github.com/peterpt/fuzzbunch.git
        cd fuzzbunch
        sudo mkdir /root/.wine/d_drive
        echo -e "${RED}When wine config opens please map 'd:' to '/root/.wine/d_drive'${NC}"
        sudo winecfg
        sudo mkdir /root/.wine/d_drive/Logs
        sleep 5
        echo -e "${RED}When registery opens, please copy 'C:\fuzzbunch;C:\fuzzbunch\windows;C:\Python26;C:\Python26\Scripts' to environment path${NC}"
        sudo wine regedit
        sleep 5
        pwd && cd ..
        sudo mv fuzzbunch -t /root/.wine/drive_c
        cd /root/.wine/drive_c/fuzzbunch/dependancies
        echo -e "${W}Will now install runtime dependancies${NC}"
        sudo wine msiexec /i python-2.6.6.msi
        sudo wine jre-6-windows-i586.exe
        sudo wine pywin32-221.exe
        sleep 5
        echo -e "${LP}Done${NC}"
    fi
}
# FuzzBunch
fbc(){
    echo -e "${RED}"
    figlet -f mini "FuzzBunch"
    echo -e "${ORNG}"
    sudo wine start python fb.py
}
# DanderSpritz
dander(){
    echo -e "${RED}"
    figlet -f mini "DanderSpritz"
    echo -e "${ORNG}"
    sudo wine start python start_lp.py
}
# FuzzBunch & DanderSpritz
fuzzyspritz(){
    echo -e "${RED}"
    figlet -f mini "FuzzyDander"
    echo -e "${ORNG}"
    PS3='Which tool would you like to deploy?'
        options=("FuzzBunch" "DanderSpritz" "Both" "Back" "Quit")
        select opt in "${options[@]}"
        do
                case $opt in
                    "FuzzBunch")
                        fbc
                        ;;

                    "DanderSpritz")
                        dander
                        ;;

                    "Both")
                        fbc
                        dander
                        ;;

                    "Back")
                        cd /opt/sifter
                        ./sifter -e
                        ;;

                    "Quit")
                        exit 1
                        ;;

                esac
        done
    echo -e "${NC}"
}
# Runtime
cd /root/.wine/drive_c/fuzzbunch/windows
install
fuzzyspritz
echo "================================================================================="
cd /opt/sifter
./sifter -m