# 定义函数
function hello {
    Write-Output 'Hello Powershell'
}

# 带参数的函数
function Say-Hello ([string] $name) {
    Write-Output "Hello, $name"
}

function Say-Hello2 {
    param([string] $name)
    Write-Output "Hello, $name"
}

# 位置参数
function Say-Hellos {
    $names = $args -join ','
    Write-Output "Hello, $names"
}

# 默认参数
function Say-Hello3 {
    param([string] $name = 'zhang3')
    Write-Output "Hello, $name"
}

# 开关参数
function Answer-Hello ([switch] $yes) {
    if ($yes) {
        Write-Output "Hi"
    }
}

# 函数返回值
function Add ([double]$a, [double]$b) {
    $c = $a + $b
    return $c
}
# 调用这些函数
hello

Say-Hello -name 'yitian'
Say-Hello2 -name 'yitian'
Say-Hello3
Say-Hellos 'yitian' 'zhang3' 'li4'
Answer-Hello -yes
Answer-Hello 
Add -a 3 -b 5