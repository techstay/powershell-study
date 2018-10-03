# 移除系统环境变量中重复的部分
$path = [Environment]::GetEnvironmentVariable("PATH", "Machine")
$distinct_paths = $path.Split(';')|Select-Object -Unique
$path = $distinct_paths -join ';'
[Environment]::SetEnvironmentVariable("PATH", $path , "Machine")
Write-Output "环境变量瘦身成功"
