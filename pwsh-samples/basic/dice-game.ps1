# dice game
$N = 10000

1..$N | ForEach-Object {
  1..6 | Get-Random
} | Group-Object | Select-Object Name, Count
