# input from keyboard
$line = Read-Host -Prompt 'Please input some text'
Write-Output $line

# 输入的时候隐藏输入内容
$line = Read-Host -Prompt 'Enter a Password' -MaskInput
Write-Output "password: $line"
