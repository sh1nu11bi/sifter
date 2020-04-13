#!/bin/bash
RED='\033[0;31m'
W='\033[1;37m'
NC='\033[0m'
YLW='\033[1;33m'

sudo docker pull s1l3nt78/sifter:build
echo -e "${W}By default the sifters docker container exposes ports ${RED}4444 8080 10000"
echo -e "${W}Would you like to set custom ports or use defaults(c/d)${NC}"
read ANS
if [[ ${ANS} == "d" ]]; then
  sudo docker run --name sifter -v /var/run/docker.sock:/var/run/docker.sock -p '4444:4444 8080:8080 10000:10000'  -it -w /opt sifter:build /bin/bash /opt/sifter/sifter
else
  echo -e "${W}Please enter your ports seperated by a single space, according to example"
  echo -e "${RED}eg. ${YLW}4444:4444 8080:8080 10000:10000${NC}"
  read PORTS
  sudo docker run --name sifter -v /var/run/docker.sock:/var/run/docker.sock -p '${PORTS}'  -it -w /opt sifter:build /bin/bash /opt/sifter/sifter
fi
sudo cp sifter -t /usr/sbin
sudo chmod +x /usr/sbin/sifter
sudo chown $USER:$USER /usr/sbin/sifter
