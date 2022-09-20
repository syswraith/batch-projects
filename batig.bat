@echo off
TITLE Running bat intel gatherer
COLOR C

md Systeminfo
cd Systeminfo

net user > userinfo.txt
systeminfo > sysinfo.txt
ipconfig /all > ipinfo.txt
nslookup myip.opendns.com resolver1.opendns.com > publicip.txt
netsh wlan show profiles > networkinfo.txt
netstat -aon > portscan.txt
tasklist > tasklist.txt
ipconfig /displaydns > history.txt
netsh wlan export profile key=clear
copy/b *txt infosofar.txt
copy/b *xml netshinfosofar.txt

del userinfo.txt
del sysinfo.txt
del ipinfo.txt
del networkinfo.txt
del publicip.txt
del portscan.txt
del tasklist.txt
del history.txt
del *.xml

copy/b *txt systeminfo.txt
del infosofar.txt
del netshinfosofar.txt

REM BAT intel gatherer by syswraith.
REM https://syswraith.github.io/
REM https://github.com/syswraith

CLS
ECHO AND THE BAT LIVES TO SEE YET ANOTHER DAY!
ECHO	        _,    _   _    ,_
ECHO	   .o888P     Y8o8Y     Y888o.
ECHO	  d88888      88888      88888b
ECHO	 d888888b_  _d88888b_  _d888888b
ECHO	 8888888888888888888888888888888
ECHO  BAT INTEL GATHERER BY SYSWRAITH
ECHO	 8888888888888888888888888888888
ECHO	 YJGS8P"Y888P"Y888P"Y888P"Y8888P
ECHO	  Y888   '8'   Y8P   '8'   888Y
ECHO	   '8o          V          o8'
ECHO	    `                     `
ECHO ascii art from https://www.asciiart.eu/
PAUSE
