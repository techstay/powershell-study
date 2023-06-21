# 创建变量
$name = 'techstay'

# 修改变量
$name = 'zhang3'

Write-Output $name

# 删除变量
Remove-Variable name

# 变量名支持连字符，但是需要放在括号里面
${today-date} = (Get-Date).DateTime

Write-Output ${today-date}
