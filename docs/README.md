<p align="center">
	<img align="center" src="https://raw.githubusercontent.com/s1l3nt78/sifter/master/docs/sifter.PNG">
<br>
  	<img align="center" src="https://img.shields.io/github/issues/s1l3nt78/sifter">
  	<img align="center" src="https://img.shields.io/github/forks/s1l3nt78/sifter">
  	<img align="center" src="https://img.shields.io/github/stars/s1l3nt78/sifter">		  
<br>
  	<img align="center" src="https://img.shields.io/badge/Version-7.6-red">
<!--	<img align="center" src="https://img.shields.io/badge/Revision-2-green">-->
	<img align="center" src="https://img.shields.io/badge/Build-7i7aN-yellowgreen">
<br>
	 <img align="center" src="https://img.shields.io/badge/Author-s1l3nt78-blueviolet">
</p>

# *Sifter*
<strong><em>s1l3nt78</em></strong>
<br>
*Because enumeration is key*
<br>
<br>

# Version 7.6 Release

	@Codename: 7i7aN


# Additions:

- MkCheck - MikroTik Router Exploitation Framework.
- RouterSploit - Network Router Exploitation Framework.
- XSStrike - Cross Site Scripting detection suite.
- Espionage - Network Traffic Scanner/ArpSpoofing


# Overview

Sifter is a osint, recon & vulnerability scanner. It combines a plethara of tools within different module sets in order to quickly perform recon tasks, check network firewalling, enumerate remote and local hosts, and scan for the 'blue' vulnerabilities within microsft and if unpatched, exploit them.  It uses tools like blackwidow and konan for webdir enumeration and attack surface mapping rapidly using ASM.
<br>
Gathered info is saved to the results folder, these output files can be easily parsed over to <a href="https://github.com/s1l3nt78/TigerShark">TigerShark</a> in order to be utilised within your campaign. Or compiled for a final report to wrap up a penetration test.
<br>
<br>
<a href="https://www.youtube.com/watch?v=YU-LYLjyO6c&t=8s">Setup Video</a>
<br>
<a href="https://youtu.be/QgAfqbxqbK0">Demo Video</a> - Its long, but you can skip through to get the general idea.
<br>
Most modules are explained along with demos of a lot of the tools
<br>
# Releases
<br>
<em>The latest release can be downloaded <a href="https://github.com/s1l3nt78/sifter/archive/v7.4.zip"><strong>here</strong></a></em>
<br />
<em>Older Releases can be found <a href="https://github.com/s1l3nt78/sifter/archive/"><strong>here</strong></a></em>
<br>
<br>

# NOTE!! 

 If a scan does not work correctly at first, remove web-protocol from target.
 <br>
 eg. target.com - instead of http://target.com


# Installation:

	* This will download and install all required tools
	*
	$ git clone https://github.com/s1l3nt78/sifter.git
	$ cd sifter
	$ chmod +x install.sh
	$ ./install.sh


<h2>Menu:</h2>
<p>
<img align="center" src="https://raw.githubusercontent.com/s1l3nt78/sifter/master/docs/menu.PNG">
</p>

# Modules:
	# Information Modules
	  = Enterprise Information Gatherers
		  -theHarvester  - https://github.com/laramies/theHarvester
		  -Osmedeus - https://github.com/j3ssie/Osmedeus
		  -ReconSpider - https://github.com/bhavsec/reconspider
		  -CredNinja - -CredNinja - https://github.com/Raikia/CredNinja

	= Targeted Information Gatherers
		  -Maryam - https://github.com/saeeddhqan/Maryam
		  -Seeker - https://github.com/thewhiteh4t/seeker
		  -Sherlock - https://github.com/sherlock-project/sherlock
		  -xRay - https://github.com/evilsocket/xray

	# Domain Recon Gathering
		-DnsTwist - https://github.com/elceef/dnstwist
		-Armory - https://github.com/depthsecurity/armory
		-SayDog - https://github.com/saydog/saydog-framework

	# Exploitation Tools
	  	= MS Exploiters
		  -ActiveReign - https://github.com/m8r0wn/ActiveReign
		  -iSpy - https://github.com/Cyb0r9/ispy
		  -SMBGhost
		  	--SMBGhost Scanner - https://github.com/ioncube/SMBGhost
		  	--SMBGhost Exploit - https://github.com/chompie1337/SMBGhost_RCE_PoC

	  	= Website Exploiters
		  -DDoS
			--Dark Star - https://github.com/s1l3nt78/Dark-Star
			--Impulse - https://github.com/LimerBoy/Impulse
		  -NekoBot - https://github.com/tegal1337/NekoBotV1
		  -xShock - https://github.com/capture0x/XSHOCK
		  -VulnX - https://github.com/anouarbensaad/vulnx

		= Exploit Searching
		  -FindSploit - https://github.com/1N3/Findsploit
		  -ShodanSploit - https://github.com/shodansploit/shodansploit

	   	-TigerShark (Phishing) - https://github.com/s1l3nt78/TigerShark
	
		= Post-Exploitation
	   	  -EoP Exploit (Elevation of Priviledge Exploit) - https://github.com/padovah4ck/CVE-2020-0683
	   	  -Omega - https://github.com/entynetproject/omega
	  	  -WinPwn - https://github.com/S3cur3Th1sSh1t/WinPwn
		  -CredHarvester - https://github.com/Technowlogy-Pushpender/creds_harvester
		  -PowerSharp - https://github.com/S3cur3Th1sSh1t/PowerSharpPack
		  -ACLight2 - https://github.com/cyberark/ACLight
		  
		
	    =FuzzyDander - Equation Group, Courtesy of the Shadow Brokers 
	   	 (Obtained through issue request.)
	   	  -FuzzBunch
		  -Danderspritz

	    =BruteDUM (Bruteforcer) - https://github.com/GitHackTools/BruteDum

	# Password Tools
		-Mentalist - https://github.com/sc0tfree/mentalist
		-DCipher - https://github.com/k4m4/dcipher
	
	# Network Scanners
		-Nmap - https://nmap.org
		-AttackSurfaceMapper - https://github.com/superhedgy/AttackSurfaceMapper
		-aSnip - https://github.com/harleo/asnip
		-wafw00f - https://github.com/EnableSecurity/wafw00f
		-Arp-Scan
		-Espionage - https://www.github.com/josh0xA/Espionage

	# HoneyPot Detection Systems
		-HoneyCaught - https://github.com/aswinmguptha/HoneyCaught
		-SniffingBear - https://github.com/MrSuicideParrot/SniffingBear
		-HoneyTel (telnet-iot-honeypot) - https://github.com/Phype/telnet-iot-honeypot
		

	# Vulnerability Scanners
		-Flan - https://github.com/cloudflare/flan
	  	-Rapidscan - https://github.com/skavngr/rapidscan
		-Yuki-Chan - https://github.com/Yukinoshita47/Yuki-Chan-The-Auto-Pentest


	# WebApplication Scanners
		  -Sitadel - https://github.com/shenril/Sitadel
		  -OneFind - https://github.com/nyxgeek/onedrive_user_enum
		  -AapFinder - https://github.com/Technowlogy-Pushpender/aapfinder
		  -BFAC - https://github.com/mazen160/bfac
		  -XSStrike - https://github.com/s0md3v/XSStrike


	# Website Scanners & Enumerators
		  -Nikto - https://github.com/sullo/nikto
		  -Blackwidow - https://github.com/1N3/blackwidow
		  -Wordpress
		  	---WPScan - https://github.com/wpscanteam/wpscan
		  	---WPForce/Yertle - https://github.com/n00py/WPForce
		  -Zeus-Scanner - https://github.com/Ekultek/Zeus-Scanner
		  -Dirb
		  -DorksEye - https://github.com/BullsEye0/dorks-eye

	# Web Mini-Games
		  -This was added in order to have a fun way to pass time
		   during the more time intensive modules.
		   Such as nMap Full Port scan or a RapidScan run.


# Sifter Help Menu

  $ sifter	runs the programs bringing up the menu in a cli environment
  <br>
  $ sifter	-c will check the existing hosts in the hostlist
  <br>
  $ sifter	-a 'target-ip' appends the hostname/IP to host file
  <br>
  $ sifter 	-m Opens the Main Module menu
  <br>
  $ sifter	-e Opens the Exploitation Modules
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
  $ sifter  -p opens the password tools for quick passlist generation or hash decryption
  <br>
  $ sifter	-v Opens the Vulnerability Scanning Module Menu
  <br>
  $ sifter	-r Opens the results folder for easy viewing of all saved results
  <br>
  $ sifter	-u Checks for/and installs updates
  <br>
  $ sifter	-h This Help Menu
  <br />
  <br />

# Other Projects
<br />
All information on projects in development can be found <a href="https://s1l3nt78.github.io">here</a>. 
<br />
For any requests or ideas on current projects please submit an issue request to the corresponding tool.
<br />
For ideas or collaboration requests on future projects., contact details can be found on the page.
<br />
<br />
<em>GitHub Pages can be found here.
<br />
-<a href="https://s1l3nt78.github.io/MkCheck">MkCheck</a> = MikroTik Router Exploitation Tool
<br />
-<a href="https://s1l3nt78.github.io/TigerShark">TigerShark</a> = Multi-Tooled Phishing Framework</em>
<br />
<br />
<br />

	  <!--#################___________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ___________#################--!>
