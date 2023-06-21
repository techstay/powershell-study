(1..10) | Where-Object { $_ -gt 5 }

Get-Process | Where-Object -Property ProcessName -Like 'qq*'
