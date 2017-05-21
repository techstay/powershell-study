# 打印九九乘法表
# 在Powershell中转义字符不用斜杠，而是用`
for ($a = 1; $a -le 9; ++$a) {
    for ($b = 1; $b -le $a; ++$b) {
        Write-Host -NoNewline "$b*$a=$($a*$b)`t"
    }
    Write-Host
}