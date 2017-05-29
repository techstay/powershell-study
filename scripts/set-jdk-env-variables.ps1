# 设置Java SDK 环境变量

$softwares = Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* 
$jdk = $softwares  | Where-Object DisplayName -Match 'Java SE Development Kit'

if ($jdk.Count -gt 1) {
    Write-Host "找到多个JDK安装程序:"
    $id = 1
    foreach ($e in $jdk) {
        Write-Host "${id}." $e.DisplayName
        $id++
    }
    $choice = [int](Read-Host -Prompt "应该使用哪个?")
    $jdk = $jdk[$choice]
}

$install_location = $jdk.InstallLocation.trim('\')
# 去掉路径最后的斜杠
Write-Host "发现安装位置: ${install_location}"

# 配置环境变量
$java_home = $install_location
$classpath = "%JAVA_HOME%\lib;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar"
$path = "%JAVA_HOME%\bin;" + $env:Path

[Environment]::SetEnvironmentVariable("JAVA_HOME", $java_home, "Machine")
[Environment]::SetEnvironmentVariable("CLASSPATH", $classpath, "Machine")
[Environment]::SetEnvironmentVariable("PATH", $path , "Machine")


Write-Host "配置JDK环境变量成功"