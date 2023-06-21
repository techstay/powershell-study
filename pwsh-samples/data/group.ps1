(1..10) | Group-Object -Property { $_ % 2 -eq 0 } | Format-Table -AutoSize
