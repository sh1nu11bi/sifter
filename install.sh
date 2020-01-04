#!/bin/bash

sudo apt-get install -y python python-pip python-dev nmap wpscan nikto dirbuster leafpad figlet nano

git clone https://github.com/1N3/blackwidow.git
cd blackwidow
    sudo cp blackwidow /usr/sbin/blackwidow
    sudo cp injectx.py /usr/sbin/injectx.py
    pip install -r requirements.txt
	cd ..
	sudo mv blackwidow -t /root
	
		cd ../
		sudo mv sifter -t /opt
		cd /opt/sifter
		sudo chmod +x /usr/sbin/blackwidow
		sudo chmod +x /usr/sbin/injectx.py
		sudo chmod +x /opt/sifter/sifter.sh
		sudo chmod +x /opt/sifter/modules/*

cd /root
git clone https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest.git
sudo mv Yuki-Chan-The-Auto-Pentest yuki
cd yuki
pip2 install -r requirements.txt
pip3 install -r requirements.txt
chmod +x Module --recursive
chmod +x wafninja joomscan yuki.sh install-perl-module.sh
./install-perl-module.sh



