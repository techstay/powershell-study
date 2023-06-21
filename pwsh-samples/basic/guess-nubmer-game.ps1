# ------------------------------------------------------------------------------
# 猜数游戏
# ------------------------------------------------------------------------------

$lower_bound = 1
$upper_bound = 10
$number = Get-Random -Minimum $lower_bound -Maximum $upper_bound

do {
  try {
    $guess = Read-Host -Prompt 'Please input a number(1-10)'
    $guess = [int]$guess
    if (($guess -le $upper_bound) -and ($guess -ge $lower_bound)) {
      if ($guess -eq $number) {
        Write-Host 'Congratulations! You are right!'
        exit
      } else {
        if ($guess -lt $number) {
          Write-Host 'Too small!'
        } else {
          Write-Host 'Too big!'
        }
      }
    } else {
      Write-Host 'Out of range!'
    }
  } catch {
    Write-Host 'Please input a valid number [between 1-10]!'
  }
}while ($guess -ne $number)



