@ECHO OFF
REM Set interfaceName to name of your interface
REM You can find and change this name in adapter settings
REM Control Panel > Network and Internet > Network and Sharing Center
SET interfaceName=Ethernet
netsh interface ipv4 set address name="%interfaceName%" ^
    source=static ^
    address=192.168.0.128 ^
    mask=255.255.255.0 ^
    gateway=192.168.0.1
netsh interface ipv4 set dnsservers name="%interfaceName%" ^
    source=static ^
    address=8.8.8.8 ^
    register=primary ^
    validate=no
