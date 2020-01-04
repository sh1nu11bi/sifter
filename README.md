# sifter

Sifter is a recon tool, originally designed to check the status of domains/hosts/ip's

From there a few extra tools were integrated in to further the info gathering process.



Modules:
**********

	-Nmap '--> Nmap Gordon Lyon - https://nmap.org

	-Nikto '--> Nikto Sullo - https://github.com/sullo/nikto

	-Dirbuster '--> DirBuster mgeeky - https://github.com/mgeeky/dirbuster

	-Blackwidow '--> Blackwidow 1N3 - https://github.com/1N3/blackwidow

	-WPScan '--> WPScan WPScanTeam - https://github.com/wpscanteam/wpscan

	-Yuki-Chan '--> Yuki-Chan Yukinoshita47 - https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest


"Sifter Help Menu"
"*****************"
"+"
"+"

 -c 	will check the exsiting hosts in the hostlist
 -e 	will open the files/host_list.txt file to be manually edited
 -a 'x.x.x.x' Target appended to host file
 -m 	starts the program under the module menu with the existing host_list.txt
 -b	Runs Blackwidow against the existing hosts in the files/host_list.txt
 -n 	Runs Nikto using the existing hosts in the files/host_list.txt
 -d 	Runs Dirbuster against existing hosts in the files/host_list.txt
 -w	Runs WPScan against the existing hosts in the files/host_list.txt
 -p	Runs Nmap against the existing hosts in the files/host_list.txt
 -y	Runs the Yuki-Chan module against current host file
 -h 	Help Menu
	 
Any suggestions for extra modules are welcome.


*TODO*

- Adding modules in order to open metasploit from sifter for quick exploitation
- Adding in modules in order to use Zeus Scanner to check for SQL injection 

