<#
.SYNOPSIS
Change windows system ntp server
.DESCRIPTION
设置Windows系统的NTP服务器,Default是默认的微软官方服务器,Ntsc是国家授时中心的服务器,Aliyun是阿里云的服务器,Apple是苹果的服务器
.EXAMPLE
ChangeNtpServer -Default
ChangeNtpServer -Ntsc
#>
function ChangeNtpServer {
  param(
    [switch]$Default,
    [switch]$Ntsc,
    [switch]$Aliyun,
    [switch]$Apple
  )

  # first add some ntp servers
  Push-Location HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DateTime\Servers

  if ($null -eq (Get-ItemProperty -Path . -Name 3 -ErrorAction SilentlyContinue)) {
    New-ItemProperty -Path . -Name 3 -Value 'ntp.ntsc.ac.cn' -PropertyType String
  }
  if ($null -eq (Get-ItemProperty -Path . -Name 4 -ErrorAction SilentlyContinue)) {
    New-ItemProperty -Path . -Name 4 -Value 'time.pool.aliyun.com' -PropertyType String
  }
  if ($null -eq (Get-ItemProperty -Path . -Name 5 -ErrorAction SilentlyContinue)) {
    New-ItemProperty -Path . -Name 5 -Value 'time.apple.com' -PropertyType String
  }

  # read command line arguments and change system ntp server
  if ($Default) {
    Set-ItemProperty -Path . -Name '(default)' -Value '1'
  }
  if ($Ntsc) {
    Set-ItemProperty -Path . -Name '(default)' -Value '3'
  }
  if ($Aliyun) {
    Set-ItemProperty -Path . -Name '(default)' -Value '4'
  }
  if ($Apple) {
    Set-ItemProperty -Path . -Name '(default)' -Value '5'
  }

  Pop-Location

  # finally restart win32tm service and sync time
  Restart-Service w32time
  w32tm /resync /force
}
