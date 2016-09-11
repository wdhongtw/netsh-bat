@ECHO OFF
REM Fresh all network profile to avoid something like "Network 2"
REM After running this bat, uninstall and reinstall your network adapter
REM in "Device Manager"
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles" /f 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles" /f 