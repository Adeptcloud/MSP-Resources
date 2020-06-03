<#
	.SYNOPSIS
	DISM Clean Up WinSXS.
	.DESCRIPTION

	.NOTES
	Version:        1.0
	Author:         Denis Zhirovetskiy
	Update Date:    5/17/2020
	Purpose/Change: SentinelOne Downloader and Installer
	Comapny:        Adeptcore, Inc.
#>


#DISM Cleanup 
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase
