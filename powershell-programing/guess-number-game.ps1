# 猜数游戏
$random = [Random]::new()
$number = $random.Next(0, 10)
while ($true) {
    $invalid = $true
    while ($invalid) {
        try {
            $input = Read-Host -Prompt "please input a number between 1-10"    
            $input = [int]$input
            $invalid = $false
        }
        catch {
            Write-Host "input is invalid"
        }
    }
    if ($input -gt $number) {
        Write-Host "Your number is big"
    }
    elseif ($input -lt $number) {
        Write-Host "Your number is small"
    }
    else {
        Write-Host "You get it!"
        break
    }
    
}
