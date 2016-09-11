@ECHO OFF
REM Set interfaceName to name of your interface
REM You can find and change this name in adapter settings
REM Control Panel > Network and Internet > Network and Sharing Center
SET interfaceName=Ethernet
netsh interface ipv4 set address name="%interfaceName%" source=dhcp
netsh interface ipv4 set dnsservers name="%interfaceName%" source=dhcp