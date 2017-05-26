# killing virus
# 不断关闭某个进程的小病毒
$process_name = "lol"
while ($true) {
    $processes = Get-Process
    if ($processes.Name -contains $process_name) {
        Get-Process $process_name|Stop-Process
    }
    else {
        Start-Sleep -Milliseconds 500
    }
    
}
