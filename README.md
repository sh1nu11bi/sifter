<p align="center">
 <img src="https://github.com/s1l3n7h0s7/sifter/blob/master/.vs/sifter.png" alt="" />
</p>

<p align="center">
  <a href="#"><img align="center" src="https://img.shields.io/github/issues/s1l3n7h0s7/sifter"</a>
  <a href="#"><img align="center" src="https://img.shields.io/github/forks/s1l3n7h0s7/sifter"</a>
  <a href="#"><img align="center" src="https://img.shields.io/github/stars/s1l3n7h0s7/sifter"</a>
<br>
  <a href="#"><img align="center" src="https://img.shields.io/badge/Version-2.2-yellow"</a>
  <a href="#"><img align="centre" src="https://img.shields.io/badge/Build-Ruby-red"</a>
<br>
	 <a href="#"><img align="center" src="https://img.shields.io/badge/Author-s1l3nt78-yellowgreen"</a>
</p>

# Sifter
s1l3nt78
<br>
* Because the first step, is enumeration *
<br>
<br>
Sifter is a osint, recon & vulnerability scanner. It combines a plethara of tools within different module sets in order to quickly perform recon tasks, check network firewalling, enumerate remote and local hosts, and scan for the 'blue' vulnerabilities within microsft and if unpatched, exploit them.  It uses tools like blackwidow and konan for webdir enumeration and attack surface mapping rapidly using ASM.
<br>
Gathered info is saved to the results folder, these output files can be easily parsed over to <a href="https://github.com/s1l3n7h0s7/TigerShark">TigerShark</a> in order to be utilised within your campaign. Or compiled for s final report to wrap up a penetration test.
<br>
<br>
# Please, if you fork this repo ensure to keep it updated.
<br>
	** Frequently updated
	<br>
	** Looking for a developer to help incorporate more offensive modules for exploitation, along side the recon.
	<br>

# Installation

	* This will download and install all required tools
	*
	$ git clone https://github.com/s1l3n7h0s7/sifter.git
	$ cd sifter
	$ chmod +x install.sh
	$ ./install.sh

	* To download sifter with all tools and install them thereafter
	*
	$ wget https://github.com/s1l3n7h0s7/sifter/releases/tag/v1.5.2/Release.zip
	$ unzip Release.zip
	$ cd sifter
	$ chmod +x release-install.sh
	$ ./release-install.sh

# Modules:
	* Information Modules
		-theHarvester '--> laramies - https://github.com/laramies/theHarvester
		-Osmedeus '--> j3ssie - https://github.com/j3ssie/Osmedeus
		-ReconSpider '--> bhavsec - https://github.com/bhavsec/reconspider
		-SniffingBear '--> MrSuicideParrot - https://github.com/MrSuicideParrot/SniffingBear
	
	* Domain Modules
		-Sublist3r '--> aboul3la - https://github.com/aboul3la/Sublist3r
		-DnsTwist '--> elceef - https://github.com/elceef/dnstwist
		-DomainFuzz '--> monkeym4ster - https://github.com/monkeym4ster/DomainFuzz
	
	* Exploitation Modules (Beta)
		-ActiveReign '--> m8r0wn - https://github.com/m8r0wn/ActiveReign
		-iSpy '--> Cyb0r9 - https://github.com/Cyb0r9/ispy
		-TigerShark '--> s1l3nt78 - https://github.com/s1l3n7h0s7/TigerShark
		-ShodanSploit '--> ShodanSploit - https://github.com/shodansploit/shodansploit

	* Network Modules
		-Nmap '--> Gordon Lyon - https://nmap.org
		-AttackSurfaceMapper '--> Superhedgy - https://github.com/superhedgy/AttackSurfaceMapper
		-aSnip '--> harleo - https://github.com/harleo/asnip

	* Vulnerability Scanners
		-Flan '--> Cloudflare - https://github.com/cloudflare/flan
		-Rapidscan '--> skavngr - https://github.com/skavngr/rapidscan
		-Yuki-Chan '--> Yukinoshita47 - https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest

	* Web-App Modules
		-Photon '--> s0md3v - https://github.com/s0md3v/Photon
		-Sitadel '--> shenril - https://github.com/shenril/Sitadel
		-wafw00f '--> EnableSecurity - https://github.com/EnableSecurity/wafw00f
	
	* Web Modules
		-Nikto '--> Sullo - https://github.com/sullo/nikto
		-Blackwidow '--> 1N3 - https://github.com/1N3/blackwidow
		-WPScan '--> WPScanTeam - https://github.com/wpscanteam/wpscan
		-Konan '--> m4ll0k - https://github.com/m4ll0k/Konan


# Sifter Help Menu

	$  -c will check the exsiting hosts in the hostlist
	$  -e will open the files/host_list.txt file to be manually edited
 	$  -s Runs the AttackSurfaceMapper module against target or host list
	$  -a 'x.x.x.x' Target appended to host file
	$  -m starts the program under the module menu with the existing host_list.txt
	$  -b Runs Blackwidow against the existing hosts in the files/host_list.txt
	$  -n Runs Nikto using the existing hosts in the files/host_list.txt
	$  -v Runs the DnsTwist module against a given target
 	$  -k Runs Konan against existing hosts in the files/host_list.txt
	$  -w Runs WPScan against the existing hosts in the files/host_list.txt
	$  -p Runs Nmap against the existing hosts in the files/host_list.txt
	$  -t Runs theHarvester against target or host list
	$  -r Runs that rapidscan module against a given target.
	$  -f Runs the Flan modules against a given target
	$  -s Runs the Sublist3r module against a given target
	$  -i Runs the iSpy module against a given target
	$  -d Runs the DnsTwist module against a target
	$  -q Runs the DomainFuzz module against a given target
	$  -z Runs the AttackSurfaceMapper module against a given target
	$  -o Runs the Photon OSINT module against target or host list
	$  -y Runs the Yuki-Chan module against current host file
	$  -u Updates sifter from Github
 	$  -h Help Menu

**TODO
	- Incorporation of exploitative modules

Any suggestions for extra modules are welcome.
Just submit an issue with your tool suggestion
Otherwise for developers just submit a pull request
