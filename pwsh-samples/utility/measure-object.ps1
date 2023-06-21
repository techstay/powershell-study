$currentFile = $MyInvocation.MyCommand.Path
Get-Content $currentFile | Measure-Object -Character -Word -Line

1..10 | Measure-Object -AllStats
