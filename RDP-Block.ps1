<#
	.SYNOPSIS
	Disabled RDP access via firewall and deny all TS connections.
	.DESCRIPTION

	.NOTES
	Version:        1.0
	Author:         Denis Zhirovetskiy and Lee Gribbin
	Update Date:    06/02/2020
	Purpose/Change: RDP Turn off and Disabled Firewall Rule
	Comapny:        Adeptcore, Inc. and Mechanicus LLC
#>


#Registry key modification to disable Termianl Server Sessions (RDP).
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f

#Disableds the Firewall group that alows Terminal Service (RDP) Access.
Disable-NetFirewallRule -DisplayGroup "Remote Desktop"