#!/bin/bash
#######################################################
#variables
BROWSER="firefox"
#######################################################
#Input Menu
function menu()
{
echo -e "Please choose one of the bellow options"
select Recon in "Threat Intelligence" "Pastebin search"
do
	case $Recon in
		"Threat Intelligence")
			intel_menu
		;;
	        "Pastebin search")
			PS_menu			
		;;
		
		*)
			echo -e "Lel, really? Try again"
			menu
		;;
	esac
	break
done < /dev/tty
}
function PS_menu(){
$BROWSER 2> /dev/null & sleep 5
echo -e "What's the target?"
read TARGET
# Searching in pastebin sites

$BROWSER "https://www.google.ca/search?q=site:pastebin.com+$TARGET" 2> /dev/null
$BROWSER "https://www.google.ca/search?q=site:psbdmp.ws+$TARGET" 2> /dev/null
$BROWSER "https://www.google.ca/search?q=site:snipt.org+$TARGET" 2> /dev/null
$BROWSER "https://www.google.ca/search?q=site:Hastebin.com+$TARGET" 2> /dev/null
$BROWSER "https://www.google.ca/search?q=site:Pasted.co+$TARGET" 2> /dev/null
$BROWSER "https://www.google.ca/search?q=site:Paste.ee+$TARGET" 2> /dev/null
menu
}

function intel_menu(){
$BROWSER 2> /dev/null & sleep 5
echo -e "What's the target?"
read TARGET

# VirusToal
$BROWSER "https://www.virustotal.com/#/search/$TARGET" 2> /dev/null
# OTX AlienVault
$BROWSER "https://otx.alienvault.com/browse/pulses?q=$TARGET" 2> /dev/null
# ThreatCrowd
$BROWSER "https://www.threatcrowd.org/domain.php?domain=$TARGET" 2> /dev/null
# SHODAN
$BROWSER "https://www.shodan.io/search?query=$TARGET" 2> /dev/null
# CENSYS
$BROWSER "https://www.censys.io/ipv4?q=$TARGET" 2> /dev/null
# CRT.SH
$BROWSER "https://crt.sh/?q=%25.$TARGET" 2> /dev/null
# ZONE-H
$BROWSER "https://www.google.ca/search?q=site:zone-h.org+$TARGET" 2> /dev/null
# XSSPOSED
$BROWSER "https://www.openbugbounty.org/search/?search=$TARGET&type=host" 2> /dev/null
# PUNKSPIDER
$BROWSER "https://securityheaders.io/?q=$TARGET" 2> /dev/null
# SSLLABS
$BROWSER "https://www.ssllabs.com/ssltest/analyze.html?d=$TARGET" 2> /dev/null
menu
}

echo -e "###################################################
\n MOSINT\n###################################################\nCoded by Mickey Alton\n"
menu

