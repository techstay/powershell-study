(1..10) | Select-Object -Skip 5
(1..10) | Select-Object -First 3

Get-Process | Where-Object -Property ProcessName -Like 'qq*' | Select-Object -ExpandProperty Path
