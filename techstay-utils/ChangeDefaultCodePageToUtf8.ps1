# 参考 https://superuser.com/questions/269818/change-default-code-page-of-windows-console-to-utf-8

<#
.SYNOPSIS
  将所有终端的默认代码页修改为UTF8
.EXAMPLE
  sudo ChangeDefaultCodePageToUTF8
#>
function ChangeDefaultCodePageToUtf8 {
  $registryKey = 'HKLM:\Software\Microsoft\Command Processor'

  if ($null -ne (Get-ItemProperty $registryKey -Name Autorun -ErrorAction SilentlyContinue)) {
    Set-ItemProperty $registryKey -Name Autorun -Value '@chcp 65001>nul' -Type String
  } else {
    New-ItemProperty $registryKey -Name Autorun -Value '@chcp 65001>nul' -PropertyType String
  }
}
