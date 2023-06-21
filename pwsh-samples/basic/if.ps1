$value = 50

if ($value -le 20) {
  Write-Output 'value is less than 20'
} elseif ($value -le 40) {
  Write-Output 'value is between 20 to 40'
} elseif ($value -le 60) {
  Write-Output 'value is between 40 to 60'
} else {
  Write-Output 'value is greater than 60'
}
