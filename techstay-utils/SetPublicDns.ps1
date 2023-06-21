<#
.SYNOPSIS
Set public dns server
.DESCRIPTION
设置公共DNS服务器
#>
function SetPublicDns {
  param(
    [switch]$Default,
    [switch]$Aliyun,
    [switch]$DnsPod,
    [switch]$OneOneFour
  )
  # find active network interfaces
  $interfaceIndexes = Get-NetAdapter -Physical | Select-Object -ExpandProperty ifIndex

  if ($Default) {
    $interfaceIndexes | ForEach-Object {
      Set-DnsClientServerAddress -InterfaceIndex $_ -ResetServerAddresses
    }
  }

  if ($Aliyun) {
    $interfaceIndexes | ForEach-Object {
      Set-DnsClientServerAddress -InterfaceIndex $_ -ServerAddresses ('223.5.5.5', '223.6.6.6')
    }
  }
  if ($DnsPod) {
    $interfaceIndexes | ForEach-Object {
      Set-DnsClientServerAddress -InterfaceIndex $_ -ServerAddresses ('119.29.29.29', '119.28.28.28')
    }

  }
  if ($OneOneFour) {
    $interfaceIndexes | ForEach-Object {
      Set-DnsClientServerAddress -InterfaceIndex $_ -ServerAddresses ('114.114.114.114', '114.114.115.115')
    }

  }
}
