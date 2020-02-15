#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'

fp_mod_select(){
	echo -e "${ORNG}FINGERPRINT	${LP}MODULE ${YLW}DESCRIPTION${NC}"
	echo -e "${LP}cdn	${YLW}Try to guess if the target uses Content Delivery Network (fastly, akamai,cloudflare...)"
	echo -e "${LP}cms	${YLW}Try to guess if the target uses a Content Management System (drupal,wordpress,magento...)"
	echo -e "${LP}framework	${YLW}Try to guess if the target uses a backend framework (cakephp, rails, symfony...)"
	echo -e "${LP}frontend	${YLW}Try to guess if the target uses a frontend framework (angularjs, jquery, vuejs...)"
	echo -e "${LP}header	${YLW}Inspect the headers exchanged with the target"
	echo -e "${LP}lang	${YLW}Try to guess the server language used by the target (asp, python, php...)"
	echo -e "${LP}server	${YLW}Try to guess the server technology used by the target (nginx,apache...)"
	echo -e "${LP}system	${YLW}Try to guess the Operation System used by the target (linux,windows...)"
	echo -e "${LP}waf	${YLW}Try to guess if the target uses a Web Application Firewall (barracuda, bigip,paloalto...)"
	echo -e "${W}Please enter the name of the fingerprint module you'd like to use${NC}"
	read FP_MODULE
}