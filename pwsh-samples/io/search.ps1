# searching texts in the hosts file
$hostPath = 'C:\Windows\System32\drivers\etc\hosts'
Get-Content $hostPath | Select-String -SimpleMatch 'tailscale'

# regex matching
Write-Output "`n"
Get-Content $hostPath | Select-String -Pattern '\b[Ww]\w*'
