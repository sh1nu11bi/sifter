#!/bin/bash

sudo apt-get install -y python python-pip python-dev nmap wpscan nikto dirbuster leafpad figlet nano

cd ../
sudo mv sifter -t /opt
cd /opt/sifter
        sudo chmod +x /opt/sifter/sifter.sh
        sudo chmod +x /opt/sifter/modules/*

if [ -f /usr/bin/blackwidow && -f /usr/bin/injectx.py || -f /usr/sbin/blackwidow && -f /usr/sbin/injectx.py ]; then
    echo "Blackwidow is already installed."
else
	cd /root
	git clone https://github.com/1N3/blackwidow.git
	cd blackwidow
	    sudo cp blackwidow /usr/sbin/blackwidow
	    sudo cp injectx.py /usr/sbin/injectx.py
	    pip install -r requirements.txt
fi

if [ -d "/root/Yuki-Chan-The-Auto-Pentest" ]; then
	echo "Yuki-Chan is already installed"
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

if [ -d /opt/AttackSurfaceMapper || -d /root/AttackSurfaceMapper ]; then
	echo "ASM is already installed"
else
	cd /opt
	git clone https://github.com/s1l3n7h0s7/AttackSurfaceMapper.git
		sudo python3 -m pip install -r requirements.txt
		sudo cp asm -t /usr/sbin
		sudo chmod +x /usr/sbin/asm
		echo "Please edit API keys in /opt/AttackSurfaceMapper/keylist.asm"
fi

figlet "Done! =D"