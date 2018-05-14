@ECHO OFF
ECHO.
ECHO ...............................................
ECHO PRESS 1 OR 2, or 3 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Pastebin Search
ECHO 2 - Threat investigation
ECHO 3 - EXIT
ECHO.

SET /P M=Type 1, 2 OR 3 then press ENTER:
IF %M%==1 GOTO :Pastebin Search
IF %M%==2 GOTO :Threat investigation
IF %M%==3 GOTO EOF


:Pastebin Search
SET /P TARGET=Please enter target: 
start "pastebin" "https://www.google.ca/search?q=site:pastebin.com+%TARGET%"
start "psbdmp" "https://www.google.ca/search?q=site:psbdmp.ws+%TARGET%"
start "snipt" "https://www.google.ca/search?q=site:snipt.org+%TARGET%"
start "Hastebin" "https://www.google.ca/search?q=site:Hastebin.com+%TARGET%"
start "Paste" ""https://www.google.ca/search?q=site:Paste.ee+%TARGET%"
start "Pasted" "https://www.google.ca/search?q=site:Pasted.co+%TARGET%"
EXIT /B 0

:Threat investigation
SET /P TARGET=Please enter target: 
start "VirusToal" "https://www.virustotal.com/#/search/%TARGET%"
start "OTX AlienVault" "https://otx.alienvault.com/browse/pulses?q=%TARGET%"
start "ThreatCrowd" "https://www.threatcrowd.org/domain.php?domain=%TARGET%"
start "SHODAN" "https://www.shodan.io/search?query=%TARGET%"
start "CENSYS" "https://www.censys.io/ipv4?q=%TARGET%"
start "ZONE-H" "https://www.google.ca/search?q=site:zone-h.org+%TARGET%"
start "XSSPOSED" "https://www.openbugbounty.org/search/?search=%TARGET%&type=host"
start "PUNKSPIDER" "https://securityheaders.io/?q=%TARGET%"
start "SSLLABS" "https://www.ssllabs.com/ssltest/analyze.html?d=%TARGET%"
EXIT /B 0


pause
