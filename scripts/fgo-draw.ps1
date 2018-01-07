while ($true) {
    $dx = Get-Random -Maximum 20 -Minimum 0
    $dy = Get-Random -Maximum 20 -Minimum 0
    $dt = Get-Random -Minimum 100 -Maximum 400
    adb shell input tap $(700 + $dx) $(700 + $dy)
    Start-Sleep -Milliseconds $(300 + $dt)
}