#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
ORNG='\033[0;33m'
W='\033[1;37m'
YES='y'
NO='n'

for TEMP in `cat temp`

	do
		echo -e "${W}Would you like to check for passwords?(y/n)${NC}"
		sleep 1
		read PASS
		echo "==================================================================================="
		if [ $PASS == y ]; then
		        echo -e "${W}Please enter the full /path/to/wordlist.txt${NC}"
		       	sleep 1
		        read WORDLIST
		        sleep 5
		        sudo wpscan --url $TEMP --wp-content-dir wp-content -e u  u1-10 dbe -P '$WORDLIST' --api-token 8oTZXNMC2J9l77Rxlc>        echo "==================================================================================="
		else
			sleep 5
			echo "==================================================================================="
			./modules/module_runner.sh
		fi
	done
