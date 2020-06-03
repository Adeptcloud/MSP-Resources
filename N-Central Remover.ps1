<#
	.SYNOPSIS
	N-Central unisntall and clean up all registry and system files.
	.DESCRIPTION

	.NOTES
	Version:        1.0
	Author:         Denis Zhirovetskiy and Trevor Ruppert
	Update Date:    5/17/2020
	Purpose/Change: N-Central Remover
	Comapny:        Adeptcore, Inc.
#>


# Set download location for uninstaller
$Uninstaller = "https://d.cloud-hosted.com/CleanUpTools/ncentral/AgentCleanup.exe"
# Set download location for cleanup tool (registry and files)
$CleanUp = "https://d.cloud-hosted.com/CleanUpTools/ncentral/NcentralAssetTool.exe"
# Set location where download files will save to
$UninstallerDest = "$env:WinDir\Temp\AgentCleanup.exe"
$CleanupDest = "$env:WinDir\Temp\NcentralAssetTool.exe"

# Starts the download process
$webreq = New-Object System.Net.WebClient

If ($env:PROCESSOR_ARCHITECTURE -eq 'x86')
{
	$webreq.DownloadFile($Uninstaller, $UninstallerDest)
	$webreq.DownloadFile($CleanUp, $CleanupDest)
}
else
{
	$webreq.DownloadFile($Uninstaller, $UninstallerDest)
	$webreq.DownloadFile($CleanUp, $CleanupDest)
}

# If the download is succesfull execute the uninstaller
If (Test-Path -Path $UninstallerDest)
{
	Start-Process -FilePath $UninstallerDest
}

# Wait for the uninstaller to finish running
Wait-Process -Name AgentCleanup

# Run the agent clean up tool to remove all traces of N-Central from the machine
If (Test-Path -Path $CleanupDest)
{
	Start-Process -FilePath $CleanupDest -ArgumentList "-d"
}