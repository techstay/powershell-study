# 直接输出到终端，用于向用户直接输出信息
Write-Host 1, 2, 3
# 输出信息，可以传递给管道方便后续处理
Write-Output 1, 2, 3

# 显示调试信息
$DebugPreference = 'Continue'
$InformationPreference = 'Continue'
$VerbosePreference = 'Continue'
$WarningPreference = 'Continue'

# 几种输出日志信息的方式
Write-Debug 'some debug info'
Write-Information 'some debug info'
Write-Error 'some error info'
Write-Verbose 'some verbose info'
Write-Warning 'some warning info'
