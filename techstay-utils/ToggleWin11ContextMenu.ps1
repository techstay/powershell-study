<#
.SYNOPSIS
  切换Win11右键菜单
.DESCRIPTION
  切换Win11右键菜单，可以在Win11模式和经典菜单之间切换，每执行一次函数会切换一次
#>
function ToggleWin11ContextMenu {
  param()

  $registry = 'HKCU:\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}'
  if (Test-Path $registry) {
    Remove-Item $registry -Recurse -Force
    Write-Output 'Switched to Win11 context menu.'
  } else {
    New-Item -Path "$registry\InprocServer32" -Value '' -Force
    Stop-Process -Name explorer
    Write-Output 'Switched to classic context menu.'
  }
}
