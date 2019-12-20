#!/bin/bash

sudo apt-get install -y python python-pip nmap wpscan nikto dirbuster leafpad 

git clone https://github.com/1N3/blackwidow.git
cd blackwidow
    sudo cp blackwidow /usr/sbin/blackwidow
    sudo cp injectx.py /usr/sbin/injectx.py
    pip install -r requirements.txt

cd ../../
sudo mv sifter -t /opt
cd /opt/sifter
sudo chmod +x /usr/sbin/blackwidow
sudo chmod +x /usr/sbin/injectx.py
sudo chmod +x /opt/sifter/sifter.sh
sudo chmod +x /opt/sifter/modules/*





