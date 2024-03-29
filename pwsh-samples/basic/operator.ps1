# ----------------------------------- 数学运算符 ------------------------------------
3 + 2
4 - 3
6 * 4 / 3
7 % 3

# ----------------------------------- 三元运算符 ------------------------------------
(2 -ge 1) ? 'greater' : 'less'

# ----------------------------------- 位运算符 -------------------------------------
# 按位非、与、或、异或，左移、右移
-bnot 5 -band 6 -bor 1 -bxor 2 -shl 2 -shr 2

# ----------------------------------- 赋值运算符 ------------------------------------
$result = 1
$result += 10
$result -= 5
$result *= 2
$result /= 2
$result %= 4

# ---------------------------------- 自增自减运算符 -----------------------------------
$i--
$i++
++$i
--$i

# ----------------------------------- 比较运算符 ------------------------------------

# 等于 不等于
4 -eq 5
4 -ne 5
# 大于 小于
4 -gt 5
4 -lt 5
# 大于等于 小于等于
4 -ge 4
4 -le 4

# --------------------------------- 字符串匹配运算符 -----------------------------------
# 通配符匹配：?*.
'hello' -like '?ello'
'hello' -notlike '*lo'
# 正则表达式匹配
'aaabc' -match 'a*b+c'
'aaac' -notmatch 'a*b+c'

# ----------------------------------- 包含运算符 ------------------------------------
'a', 'b', 'c' -contains 'a'
'a', 'b' -contains 'c'
'a', 'b' -notcontains 'c'

# ----------------------------------- 替换运算符 ------------------------------------
'hello zhang3' -replace 'zhang3', 'li4'
# 支持正则表达式
'aaa bb cc aaaa bbb aaaaa' -replace 'a+' , 'zzz'

# 以上字符串相关的运算符还可以通过添加i和c表示大小写不敏感和敏感

# -------------------------------- 分隔运算符和连接运算符 ---------------------------------
'A B C DE' -split ' ' -join ','


# ----------------------------------- 逻辑运算符 ------------------------------------
$t = $true
$f = $false

$t -and $f
$t -or $f
$t -xor $f
-not $t

# 叹号(!)和-not完全一样
! $t

# ----------------------------------- 类型运算符 ------------------------------------

3.14 -is [Double]
3.14 -isnot [Float]

# ---------------------------------- 类型转换运算符 -----------------------------------
[Float]$pi = 3.14
$pi -is [Float]

# ---------------------------------- 静态成员调用符 -----------------------------------
[DateTime]::Now

# ----------------------------------- 范围运算符 ------------------------------------
1..3
4..1

# ---------------------------------- 格式化运算符 ------------------------------------
'My name is {0}, I am {1} years old' -f 'zhang3', 18

# ----------------------------------- 内插字符串 ------------------------------------
$name = 'li4'
$age = 18

"My name is $name, I am $age years old."

# ---------------------------------- 子表达式运算符 -----------------------------------
# 将子表达式内部的运算之后用结果替换
"Today is $(Get-Date)"

# 数组子表达式
@(1, 2, 3) -is [Array]
@() -is [Array]

# 哈希表子表达式
@{a = 1; b = 2; c = 2 } -is [Hashtable]
@{} -is [Hashtable]

# ---------------------------------- 空值运算符 ------------------------------------
# 当左边为空时返回右边的值
$null ?? 'DefaultValue'
# 当左边的值为空时将右边的值赋给左边
$val ??= 'DefaultValue'
# 当左边为空时整个表达式返回空
$null?.Name
