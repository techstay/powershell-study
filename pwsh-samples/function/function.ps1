# 定义函数
function SendMessage([string]$from, [string]$to, [string]$message = 'none') {
  Write-Output "Message: $message, from $from, to $to."
}

# 调用函数
SendMessage 'zhang3' 'li4' 'hello'
# 用名称调用
SendMessage -to 'zhang3' -from 'li4' 'hi'
# 默认参数
SendMessage -from 'mike' -to 'john'
