<p align="center">
 <img src="https://github.com/s1l3nt78/sifter/blob/master/.vs/sifter.png" alt="" />
</p>

<p align="center">
  <a href="#"><img align="center" src="https://img.shields.io/github/issues/s1l3nt78/sifter"</a>
  <a href="#"><img align="center" src="https://img.shields.io/github/forks/s1l3nt78/sifter"</a>
  <a href="#"><img align="center" src="https://img.shields.io/github/stars/s1l3nt78/sifter"</a>
<br>
  <a href="#"><img align="center" src="https://img.shields.io/badge/Version-3-red"</a>
  <a href="#"><img align="centre" src="https://img.shields.io/badge/Build-Amethys7-yellowgreen"</a>
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
	  = Enterprised Focused
		  -<a href="https://github.com/laramies/theHarvester">theHarvester</a>
		  -<a href="https://github.com/j3ssie/Osmedeus">Osmedeus</a> 
		  -<a href="https://github.com/bhavsec/reconspider">ReconSpider</a>
		  
	  = Individual Focused
		  -<a href="https://github.com/thewhiteh4t/seeker">Seeker</a>
		  -<a href="https://github.com/sherlock-project/sherlock">Sherlock</a>  


	* Domain Modules
		-<a href="https://github.com/InQuest/omnibus">Omnibus</a> 
		-<a href="https://github.com/elceef/dnstwist">DnsTwist</a> 
		-<a href="https://github.com/monkeym4ster/DomainFuzz">DomainFuzz</a> 
		-<a href="https://github.com/depthsecurity/armory">Armory</a> 


	* Exploitation Modules (Beta)
	  = MS Exploiters
		  -<a href="https://github.com/m8r0wn/ActiveReign">ActiveReign</a>
		  -<a href="https://github.com/Cyb0r9/ispy">iSpy</a>
		
	  = Website Exploiters
		  -<a href="https://github.com/s1l3nt78/Dark-Star">Dark Star</a> 
		  -<a href="https://github.com/tegal1337/NekoBotV1">NekoBot</a>
  
	  = Exploit Searching
		  -<a href="https://github.com/1N3/Findsploit">FindSploit</a>
		  -<a href="https://github.com/shodansploit/shodansploit">ShodanSploit</a> 
	  
	    -<a href="https://github.com/s1l3nt78/TigerShark">TigerShark</a> 
	  

	* Network Modules
		  -<a href="https://nmap.orgNmap</a> '--> Gordon Lyon - 
		  -<a href="https://github.com/superhedgy/AttackSurfaceMapper">AttackSurfaceMapper</a>
		  -<a href="https://github.com/harleo/asnip">aSnip</a>
		

	* HoneyPot Detection Systems
		-<a href="https://github.com/MrSuicideParrot/SniffingBear">SniffingBear</a> 
		-<a href="https://github.com/aswinmguptha/HoneyCaught">HoneyCaught</a>


	* Vulnerability Scanners
		  -<a href="https://github.com/cloudflare/flan">Flan</a> 
	      -<a href="https://github.com/skavngr/rapidscan">Rapidscan</a>
		  -<a href="https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest">Yuki-Chan</a>


	* Web-App Modules
		  -<a href="https://github.com/shenril/Sitadel">Sitadel</a>
		  -<a href="https://github.com/EnableSecurity/wafw00f">wafw00f</a>
		  -<a href="https://github.com/Technowlogy-Pushpender/aapfinder">AapFinder</a> 


	* Web Modules
		  -<a href="https://github.com/sullo/nikto">Nikto</a> 
		  -<a href="https://github.com/1N3/blackwidow">Blackwidow</a>
		  -<a href="https://github.com/wpscanteam/wpscan">WPScan</a> 
		  -<a href="https://github.com/m4ll0k/Konan">Konan</a>  


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
