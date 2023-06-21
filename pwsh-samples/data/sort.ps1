(1..5s) | Sort-Object -Descending

Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 10 | Format-Table -AutoSize
