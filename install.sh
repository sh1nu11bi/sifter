#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

sudo apt-get install -y python python-pip python-dev nmap wpscan nikto dirbuster leafpad figlet nano theharvester docker docker-compose docker.io python3-dnspython python3-geoip python3-whois python3-requests python3-ssdeep
echo -e "${RED}Checking for external dependencies${NC}"
echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for Sifter"
echo -e "${NC}"
if [[ -d /opt/sifter ]]; then
	echo -e "${ORNG}Sifter is already installed.${NC}"
else
	pwd && cd ..
	sudo mv sifter /opt/sifter
	cd /opt/sifter
    sudo cp sifter /usr/sbin/sifter
	sudo chmod +x /opt/sifter/sifter /opt/sifter/modules/* /usr/sbin/sifter
	sleep 2
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for Sublist3r"
echo -e "${NC}"
if [[ -d /opt/Sublist3r ]]; then
	echo -e "${ORNG}Sublist3r is already installed.${NC}"
else
	cd /opt
	git clone https://github.com/aboul3la/Sublist3r.git
	cd Sublist3r
	sudo pip install -r requirements.txt
	sleep 2
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for DnsTwist"
echo -e "${NC}"
if [[ -d /opt/dnstwist ]]; then
	echo -e "${ORNG}DnsTwist is already installed.${NC}"
else
	cd /opt
	git clone https://github.com/elceef/dnstwist.git
	cd dnstwist
	sudo apt-get install libgeoip-dev libffi-dev
	BUILD_LIB=1 pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for Flan"
echo -e "${NC}"
if [[ -d /opt/flan ]]; then
	echo -e "${ORNG}Flan is already installed.${NC}"
else
	cd /opt
	git clone https://github.com/s1l3n7h0s7/flan.git
	cd flan
	sudo docker build .
	sleep 2
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for Blackwidow"
echo -e "${NC}"
if [[ -f /usr/bin/blackwidow && -f /usr/bin/injectx.py ]] || [[ -f /usr/sbin/blackwidow && -f /usr/sbin/injectx.py ]]; then
    echo -e "${ORNG}Blackwidow is already installed.${NC}"
else
	cd /root
	git clone https://github.com/1N3/blackwidow.git
	cd blackwidow
	    sudo cp blackwidow /usr/sbin/blackwidow
	    sudo cp injectx.py /usr/sbin/injectx.py
	    pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for Photon"
echo -e "${NC}"
if [[ -d /opt/Photon ]] || [[ -d /root/Photon ]]; then
    echo -e "${ORNG}Photon is already installed.${NC}"
else
	cd /opt
	git clone https://github.com/s0md3v/Photon.git
	cd Photon
	    sudo python3 -m pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for RapidScan"
echo -e "${NC}"
if [[ -f "/usr/sbin/rapidscan.py" ]] || [[ -d "/opt/rapidscan" ]]; then
	echo -e "${ORNG}RapidScan is already installed.${NC}"
else
	cd /opt
	git clone https://github.com/s1l3n7h0s7/rapidscan.git
	cd rapidscan 
	chmod +x rapidscan.py rapidscan
	sudo mv rapidscan -t /usr/sbin
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for Yuki-Chan"
echo -e "${NC}"
if [[ -d "/root/Yuki-Chan-The-Auto-Pentest" ]] || [[ -d "/root/yuki" ]]; then
	echo -e "${ORNG}Yuki-Chan is already installed.${NC}"
else
	cd /root
	git clone https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest.git
	sudo mv Yuki-Chan-The-Auto-Pentest yuki
	cd yuki
	   pip2 install -r requirements.txt
	   pip3 install -r requirements.txt
	   chmod +x Module --recursive
	   sudo chown $USER:$USER Module --recursive
	   chmod +x wafninja joomscan yuki.sh install-perl-module.sh
	   sudo ./install-perl-module.sh
fi

echo -e "${w}===========================================================================================${NC}"
echo -e "${ORNG}"
figlet -f mini "Checking for Attack Surface Mapper"
echo -e "${NC}"
if [[ -d /opt/AttackSurfaceMapper ]] || [[ -d /root/AttackSurfaceMapper ]]; then
	echo -e "${ORNG}ASM is already installed.${NC}"
else
	cd /opt
	git clone https://github.com/s1l3n7h0s7/AttackSurfaceMapper.git
	cd AttackSurfaceMapper
	   sudo python3 -m pip install -r requirements.txt
	   sudo cp asm -t /usr/sbin
	   sudo chmod +x /usr/sbin/asm
fi
echo -e "${W}Please edit API keys in /opt/AttackSurfaceMapper/keylist.asm"
echo -e "& add your WPvulnDB api token to modules/wpscan_script.sh${NC}"
echo -e "${RED}"
figlet "Done! =D"
echo -e "${NC}"
cd /opt/sifter
sifter -h
