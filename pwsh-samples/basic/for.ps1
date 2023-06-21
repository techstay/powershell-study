# for循环
$i = 0
for ($i = 0; $i -lt 5; $i ++) {
  # do nothing
}
Write-Output "i stopped at $i"

# foreach
$i = 0
foreach ($i in 0..5) {
  # do nothing
}
Write-Output "i stopped at $i"
