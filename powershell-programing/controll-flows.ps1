# 条件语句
$n = 5
if ($n -le 4) {
    Write-Output "$n <= 4"
}
elseif ($n -ge 6) {
    Write-Output "$n >= 6"
}
else {
    Write-Output "$n == 5"
}

Write-Output '----------------'
# switch判断
$n = 4
switch ($n) {
    1 {"n is 1"}
    2 {"n is 2"}
    3 {"n is 3"}
    default {"n is others"}
}

Write-Output '----------------'
# do-while循环
$i = 0
do {
    $i++
    Write-Output $i
}while ($i -ne 3)

Write-Output '----------------'
# do-until循环
$i = 0
do {
    $i++
    Write-Output $i
}until ($i -eq 3)

Write-Output '----------------'
# while循环
$i = 0
while ($i -lt 3) {
    Write-Output $i
    $i++
}

Write-Output '----------------'
# for循环
for ($i = 0; $i -ne 3; $i++) {
    Write-Output $i
}

Write-Output '----------------'
# for-each循环
$array = @(1, 2, 3, 4)
foreach ($i in $array) {
    Write-Output $i
}