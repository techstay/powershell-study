# do while循环
$i = 0
do {
  $i ++
}while ($i -lt 5)
Write-Output "i stopped at $i"

# while循环
$i = 0
while ($i -lt 5) {
  $i ++
}
Write-Output "i stopped at $i"

# do until循环
$i = 0
do {
  $i ++
}until ($i -ge 5)

Write-Output "i stopped at $i"
