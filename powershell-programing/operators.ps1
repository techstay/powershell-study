# 数学运算符
$i = 5
$sum = 3 + 4 * ($i) / 2

Write-Output $sum

Write-Output '----------------'
# 自增自减运算符
$i--
$i++
++$i
--$i

Write-Output '----------------'
# 比较运算符

# 等于 不等于
4 -eq 5
4 -ne 5
# 大于 小于
4 -gt 5
4 -lt 5
# 大于等于 小于等于
4 -ge 4
4 -le 4

Write-Output '----------------'
# 字符串匹配运算符
'hello' -like '?ello'
'hello' -notlike '*lo'
'aaabc' -match 'a*b+c'
'aaac' -notmatch 'a*b+c'

Write-Output '----------------'
# 包含运算符
'a', 'b', 'c' -contains 'a'
'a', 'b' -contains 'c'

Write-Output '----------------'
# 替换运算符
'hello zhang3' -replace 'zhang3', 'yitian'

Write-Output '----------------'
# 分隔运算符
'A B C DE' -split ' '

Write-Output '----------------'
# 连接运算符
'A', 'B', 'C' -join ','

Write-Output '----------------'
# 大小写敏感运算符
'yitian' -match 'Yitian'
'yitian' -cmatch 'Yitian'

Write-Output '----------------'
# 逻辑运算符
$t = $true
$f = $false

$t -and $f
$t -or $f
$t -xor $f
-not $t

Write-Output '----------------'
# 类型运算符

3.14 -is [Double]
3.14 -isnot [Float]

Write-Output '----------------'
# 后台运行
& Get-Command -Noun object

Write-Output '----------------'
# 类型转换运算符
[Float]$pi = 3.14
$pi -is [Float]

Write-Output '----------------'
# 静态成员调用符
[DateTime]::Now


Write-Output '----------------'
# 范围运算符
1..3
4..1

Write-Output '----------------'
# 格式化运算符
"My name is {0}, I am {1} years old" -f "yitian", 24

Write-Output '----------------'
# 内插字符串
$name = 'yitian'
$age = 24

"My name is $name, I am $age years old."

Write-Output '----------------'
# 数组转换操作符
@(1, 2, 3) -is [Array]
@() -is [Array]

Write-Output '----------------'
# 单元素数组
, 14 -is [Array]
