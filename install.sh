#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'

sudo apt-get install -y python python-pip graphviz python-dev nmap wpscan nikto dirbuster leafpad figlet nano theharvester docker docker-compose docker.io python3-dnspython python3-geoip python3-whois python3-requests python3-ssdeep nodejs npm wafw00f

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking if Sifter is installed${NC}"
if [[ -d /opt/sifter ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Sifter is already installed."
	echo -e "${NC}"
else
	pwd && cd ..
	sudo mv sifter /opt/sifter
	sudo chown $USER:$USER -R /opt/sifter 
	cd /opt/sifter
    sudo cp sifter /usr/sbin/sifter
	sudo chmod +x /opt/sifter/sifter /usr/sbin/sifter
	sudo chmod +x -R /opt/sifter/modules
	sleep 2
fi

echo -e "${RED}Checking for external dependencies${NC}"
echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Sublist3r${NC}"
if [[ -d /opt/Sublist3r ]]; then
	figlet -f mini "Sublist3r is already installed."
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/aboul3la/Sublist3r.git
	cd Sublist3r
	sudo pip install -r requirements.txt
	sleep 2
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for DomainFuzz${NC}"
if [[ -d /opt/DomainFuzz ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Sublist3r is already installed."
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/monkeym4ster/DomainFuzz.git
	sleep 2
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for DnsTwist${NC}"
if [[ -d /opt/dnstwist ]]; then
	echo -e "${ORNG}"
	figlet -f mini "DnsTwist is already installed."
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/elceef/dnstwist.git
	cd dnstwist
	sudo apt-get install libgeoip-dev libffi-dev
	BUILD_LIB=1 pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Flan${NC}"
if [[ -d /opt/flan ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Flan is already installed"
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/s1l3nt78/flan.git
	cd flan
	sudo docker build .
	sleep 2
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Blackwidow${NC}"
if [[ -f /usr/bin/blackwidow && -f /usr/bin/injectx.py ]] || [[ -f /usr/sbin/blackwidow && -f /usr/sbin/injectx.py ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Blackwidow is already installed"
	echo -e "${NC}"
else
	cd /root
	git clone https://github.com/1N3/blackwidow.git
	cd blackwidow
	    sudo cp blackwidow /usr/sbin/blackwidow
	    sudo cp injectx.py /usr/sbin/injectx.py
	    pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Photon${NC}"
if [[ -d /opt/Photon ]] || [[ -d /root/Photon ]]; then
    echo -e "${ORNG}"
	figlet -f mini "Photon is already installed"
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/s0md3v/Photon.git
	cd Photon
	    sudo python3 -m pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Rapidscan${NC}"
if [[ -f "/usr/sbin/rapidscan.py" ]] || [[ -d "/opt/rapidscan" ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Rapidscan is already installed"
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/s1l3nt78/rapidscan.git
	cd rapidscan
	chmod +x rapidscan.py rapidscan
	sudo mv rapidscan -t /usr/sbin
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Yuki-Chan${NC}"
if [[ -d "/root/Yuki-Chan-The-Auto-Pentest" ]] || [[ -d "/root/yuki" ]]; then
    echo -e "${ORNG}"
	figlet -f mini "Yuki-Chan is already installed"
	echo -e "${NC}"
else
    cd /root
    sudo git clone https://github.com/s1l3nt78/Yuki-Chan-The-Auto-Pentest.git
    sudo mv Yuki-Chan-The-Auto-Pentest yuki
	cd yuki
	   sudo pip2 install -r requirements.txt
	   sudo pip3 install -r requirements.txt
	   sudo chmod +x Module --recursive
	   sudo chown $USER:$USER Module --recursive
	   sudo chmod +x wafninja joomscan yuki.sh install-perl-module.sh
	   sudo ./install-perl-module.sh
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for ShodanSploit${NC}"
if [[ -d "/opt/shodansploit" ]]; then
	echo -e "${ORNG}"
	figlet -f mini "ShodanSploit is already installed."
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/shodansploit/shodansploit.git
	sudo chown $USER:$USER -R shodansploit
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for ReconSpider${NC}"
if [[ -d "/opt/reconspider" ]]; then
	echo -e "${ORNG}"
	figlet -f mini "ReconSpider is already installed"
	echo -e "${NC}"	
else
	cd /opt
	git clone https://github.com/bhavsec/reconspider.git
	cd reconspider
	sudo python3 setup.py install
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Attack Surface Mapper${NC}"
if [[ -d /opt/AttackSurfaceMapper ]] || [[ -d /root/AttackSurfaceMapper ]]; then
	echo -e "${ORNG}"
	figlet -f mini "ASM is already installed."
	echo -e "${NC}"
else
	cd /opt
	git clone https://github.com/s1l3nt78/AttackSurfaceMapper.git
	cd AttackSurfaceMapper
	   sudo python3 -m pip install -r requirements.txt
	   sudo cp asm -t /usr/sbin
	   sudo chmod +x /usr/sbin/asm
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for ActiveReign${NC}"
if [[ -d '/opt/ActiveReign' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "ActiveReign is already installed"
	echo -e "${NC}"
else
	cd /opt
	sudo git clone https://github.com/m8r0wn/ActiveReign.git
	cd ActiveReign
	pip3 install -r requirements.txt
	sudo python3 setup.py install
	pip3 install prompt-toolkit==2.0.9 impacket
	ar3 db help
	sudo cp ar3/config.json -t /home/$USER/.ar3
	sudo chown $USER:$USER /home/$USER/.ar3
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for iSpy${NC}"
if [[ -d '/opt/ispy' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "iSpy is already installed"
	echo -e "${NC}"
else
	cd /opt/
	sudo git clone https://github.com/Cyb0r9/ispy.git
	cd ispy
	chmod +x setup.sh
	sudo ./setup.sh
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Sitadel${NC}"
if [[ -d '/opt/Sitadel' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Sitadel is already installed"
	echo -e "${NC}"
else
	cd /opt/
	sudo git clone https://github.com/shenril/Sitadel.git
	cd Sitadel
	sudo python3 -m pip install .
	python3 setup.py install
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Konan${NC}"
if [[ -d '/opt/Konan' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Konan is already installed"
	echo -e "${NC}"
else
	cd /opt/
	sudo git clone https://github.com/m4ll0k/Konan.git
	cd Konan
	sudo pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for SniffingBear${NC}"
if [[ -d '/opt/SniffingBear' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "SniffingBear is already installed"
	echo -e "${NC}"
else
	cd /opt/
	sudo git clone https://github.com/MrSuicideParrot/SniffingBear.git
	cd SniffingBear
	sudo pip install -r requirements.txt
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Osmedeus${NC}"
if [[ -d '/opt/docker-osmedeus' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Osmedeus is already installed"
	echo -e "${NC}"
else
	cd /opt/
	git clone https://github.com/mablanco/docker-osmedeus.git
	cd docker-osmedeus 
	sudo docker build -t mablanco/osmedeus .
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for NekoBot${NC}"
if [[ -d '/opt/NekoBotV1' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "NekoBot is already installed"
	echo -e "${NC}"
else
	cd /opt/
	git clone https://github.com/tegal1337/NekoBotV1.git
fi

echo -e "${W}===========================================================================================${NC}"
# asnip
go get github.com/harleo/asnip

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Armory${NC}"
if [[ -d '/opt/armory' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Armory is already installed"
	echo -e "${NC}"
else
	cd /opt/
	git clone https://github.com/depthsecurity/armory.git
	cd armory
	sudo python3 setup.py install
	armory
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for Seeker${NC}"
if [[ -d '/opt/seeker' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "Sherlock is already installed"
	echo -e "${NC}"
else
	cd /opt/
	sudo git clone https://github.com/thewhiteh4t/seeker.git
	cd seeker
	sudo chmod 777 install.sh
	./install.sh
fi

echo -e "${W}===========================================================================================${NC}"
echo -e "${YLW}Checking for AapFinder${NC}"
if [[ -d '/opt/aapfinder' ]]; then
	echo -e "${ORNG}"
	figlet -f mini "AapFinder is already installed"
	echo -e "${NC}"
else
	cd /opt/
	sudo git clone https://github.com/Technowlogy-Pushpender/aapfinder.git
	sudo chown $USER:$USER -R aapfinder
	cd aapfinder
	chmod +x aapfinder.py
	touch targets.txt
fi

sudo chown $USER:$USER -R /opt/sifter /usr/sbin/sifter
echo -e "${RED}"
figlet "Done! =D"
echo -e "${NC}"
cd /opt/sifter
sifter -h
echo -e "${W}Please edit API keys in /opt/AttackSurfaceMapper/keylist.asm"
echo -e "& add your WPvulnDB api token to modules/wpscan.sh to both of the command arguments${NC}"
