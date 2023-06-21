Write-Output 'random number:'
$number = Get-Random -Minimum 1 -Maximum 10
Write-Output $number

Write-Output 'random number from given collections:'
$list = @('a', 'b', 'c', 'd', 'e')
Write-Output $list | Get-Random

Write-Output 'several random numbers:'
Write-Output $(Get-Random -Minimum 1 -Maximum 100 -Count 3)

Write-Output 'shuffling collections:'
@(1, 2, 3, 4, 5) | Get-Random -Shuffle
