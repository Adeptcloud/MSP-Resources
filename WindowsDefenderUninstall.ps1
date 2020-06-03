<#
	.SYNOPSIS
	Disable Windows Defender 
	.DESCRIPTION

	.NOTES
	Version:        1.0
	Author:         Denis Zhirovetskiy
	Update Date:    5/17/2020
	Purpose/Change: Disables Windows Defender
	Comapny:        Adeptcore, Inc.
#>


#Uninstall
Uninstall-WindowsFeature -Name Windows-Defender