# Get-ChildItem (Join-Path $PSScriptRoot *.ps1) | ForEach-Object { . $_.FullName }

. $PSScriptRoot\ChangeDefaultCodePageToUtf8.ps1
. $PsScriptRoot\ChangeNtpServer.ps1
. $PSScriptRoot\CheckDotnetVersion.ps1
. $PSScriptRoot\OptimizeServices.ps1
. $PSScriptRoot\SetGradleEnv.ps1
. $PSScriptRoot\SetPublicDns.ps1
. $PSScriptRoot\ToggleWin11ContextMenu.ps1
