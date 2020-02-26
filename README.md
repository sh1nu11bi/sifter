<p align="center">
 <img src="https://github.com/s1l3nt78/sifter/blob/master/.vs/sifter.png" alt="" />
</p>

<p align="center">
  <a href="#"><img align="center" src="https://img.shields.io/github/issues/s1l3nt78/sifter"</a>
  <a href="#"><img align="center" src="https://img.shields.io/github/forks/s1l3nt78/sifter"</a>
  <a href="#"><img align="center" src="https://img.shields.io/github/stars/s1l3nt78/sifter"</a>
<br>
  <a href="#"><img align="center" src="https://img.shields.io/badge/Version-2.8-red"</a>
  <a href="#"><img align="centre" src="https://img.shields.io/badge/Build-Topaz-yellowgreen"</a>
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
Gathered info is saved to the results folder, these output files can be easily parsed over to <a href="https://github.com/s1l3nt78/TigerShark">TigerShark</a> in order to be utilised within your campaign. Or compiled for s final report to wrap up a penetration test.
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
	$ git clone https://github.com/s1l3nt78/sifter.git
	$ cd sifter
	$ chmod +x install.sh
	$ ./install.sh

# Modules:
	* Information Modules
	  = Enterprise Focued	
		-theHarvester '--> laramies - <a href="https://github.com/laramies/theHarvester">https://github.com/laramies/theHarvester</a>
		-Osmedeus '--> j3ssie - <a href="https://github.com/j3ssie/Osmedeus">https://github.com/j3ssie/Osmedeus</a>
		-ReconSpider '--> bhavsec - <a href="https://github.com/bhavsec/reconspider">https://github.com/bhavsec/reconspider</a>
		-SniffingBear '--> MrSuicideParrot - <a href="https://github.com/MrSuicideParrot/SniffingBear">https://github.com/MrSuicideParrot/SniffingBear</a>
	  
	  = Indivual Target Focused
	  	-Seeker '--> thewhiteh4t - <a href="https://github.com/thewhiteh4t/seeker">https://github.com/thewhiteh4t/seeker</a>
		-Sherlock '--> Sherlock-Project - <a href="https://github.com/sherlock-project/sherlock">https://github.com/sherlock-project/sherlock</a>

	* Domain Modules
		-Sublist3r '--> aboul3la - <a href="https://github.com/aboul3la/Sublist3r">https://github.com/aboul3la/Sublist3r</a>
		-DnsTwist '--> elceef - <a href="https://github.com/elceef/dnstwist">https://github.com/elceef/dnstwist</a>
		-DomainFuzz '--> monkeym4ster - <a href="https://github.com/monkeym4ster/DomainFuzz">https://github.com/monkeym4ster/DomainFuzz</a>
		-Armory '--> DepthSecurity - <a href="https://github.com/depthsecurity/armory">https://github.com/depthsecurity/armory</a>

	* Exploitation Modules (Beta)
		-ActiveReign '--> m8r0wn - <a href="https://github.com/m8r0wn/ActiveReign">https://github.com/m8r0wn/ActiveReign</a>
		-iSpy '--> Cyb0r9 - <a href="https://github.com/Cyb0r9/ispy">https://github.com/Cyb0r9/ispy</a>
		-TigerShark '--> s1l3nt78 - <a href="https://github.com/s1l3nt78/TigerShark">https://github.com/s1l3nt78/TigerShark</a>
		-ShodanSploit '--> ShodanSploit - <a href="https://github.com/shodansploit/shodansploit">https://github.com/shodansploit/shodansploit</a>
		-NekoBot '--> tegal1337 - <a href="https://github.com/tegal1337/NekoBotV1">https://github.com/tegal1337/NekoBotV1</a>

	* Network Modules
		-Nmap '--> Gordon Lyon - <a href="https://nmap.org">https://nmap.org</a>
		-AttackSurfaceMapper '--> Superhedgy - <a href="https://github.com/superhedgy/AttackSurfaceMapper">https://github.com/superhedgy/AttackSurfaceMapper</a>
		-aSnip '--> harleo - <a href="https://github.com/harleo/asnip">https://github.com/harleo/asnip</a>
		-Armory '--> DepthSecurity - <a href="https://github.com/depthsecurity/armory">https://github.com/depthsecurity/armory</a>

	* Vulnerability Scanners
		-Flan '--> Cloudflare - <a href="https://github.com/cloudflare/flan">https://github.com/cloudflare/flan</a>
		-Rapidscan '--> skavngr - <a href="https://github.com/skavngr/rapidscan">https://github.com/skavngr/rapidscan</a>
		-Yuki-Chan '--> Yukinoshita47 - <a href="https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest">https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest</a>
	* Web-App Modules
		-Photon '--> s0md3v - <a href="https://github.com/s0md3v/Photon">https://github.com/s0md3v/Photon</a>
		-Sitadel '--> shenril - <a href="https://github.com/shenril/Sitadel">https://github.com/shenril/Sitadel</a>
		-wafw00f '--> EnableSecurity - <a href="https://github.com/EnableSecurity/wafw00f">https://github.com/EnableSecurity/wafw00f</a>
		-AapFinder '--> Technowlogy-Pushpender - <a href="https://github.com/Technowlogy-Pushpender/aapfinder">https://github.com/Technowlogy-Pushpender/aapfinder</a>

	* Web Modules
		-Nikto '--> Sullo - <a href="https://github.com/sullo/nikto">https://github.com/sullo/nikto</a>
		-Blackwidow '--> 1N3 - <a href="https://github.com/1N3/blackwidow">https://github.com/1N3/blackwidow</a>
		-WPScan '--> WPScanTeam - <a href="https://github.com/wpscanteam/wpscan">https://github.com/wpscanteam/wpscan</a>
		-Konan '--> m4ll0k - <a href="https://github.com/m4ll0k/Konan">https://github.com/m4ll0k/Konan</a>


# Sifter Help Menu

  $ sifter	runs the programs bringing up the menu in a cli environment
  <br>
  $ sifter	-c will check the existing hosts in the hostlist
  <br>
  $ sifter	-a 'target-ip' appends the hostname/IP to host file
  <br>
  $ sifter	-e Opens the Exploitation Module
 <br> 
  $ sifter	-i Opens the Info-based Module menu
 <br> 
  $ sifter 	-d Opens the Domain Focused Modules
 <br> 
  $ sifter 	-n Opens the Network Mapping Modules menu
 <br>
  $ sifter	-w Opens the Website Focused Modules
 <br> 
  $ sifter	-wa Opens the Web-App Focused Module menu
 <br> 
  $ sifter	-v Opens the Vulnerability Scanning Module Menu
 <br> 
  $ sifter	-u Checks for/and installs updates
 <br> 
  $ sifter	-h This Help Menu

**TODO
	- Incorporation of exploitative modules

Any suggestions for extra modules are welcome.
Just submit an issue with your tool suggestion
Otherwise for developers just submit a pull request.
