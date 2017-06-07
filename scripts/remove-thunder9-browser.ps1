# 关闭迅雷9浏览器的脚本

$softwares = $null
# 检查系统是32位的还是64位的
$bits = Get-WmiObject -Class win32_processor|Select-Object -ExpandProperty addresswidth
if ($bits -eq 32) {
    $softwares = Get-ItemProperty 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
}
elseif ($bits -eq 64) {
    $softwares = Get-ItemProperty 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
}
else {
    Write-Host '不知道系统版本，直接结束'
    exit
}
# 获取迅雷9安装位置
$thunder9 = $softwares | Where-Object {$_.DisplayName -eq '迅雷' -and $_.DisplayVersion.StartsWith('9')}

# 定位ThunderBrowser文件
$brower_location = $thunder9.InstallLocation + 'Program\TBC\ThunderBrowser.exe'

# 备份文件
copy-item $brower_location $brower_location+'2'

# 将可执行文件替换为文本
Out-File $brower_location -InputObject ''