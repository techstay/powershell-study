$progress = 0
while ($progress -lt 100) {
  $progress += Get-Random -Minimum 1 -Maximum 20
  if ($progress -gt 100) {
    $progress = 100
  }
  Write-Progress -Activity 'Work in progress' -Status "current progress: $progress%" -percent $progress
  Start-Sleep -Milliseconds 300
}
