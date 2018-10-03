# 用当前目录作为JAVA_HOME来设置Java环境变量
$java_home = (Get-Item -Path ".\").FullName
$classpath = "%JAVA_HOME%\lib"
$path = "%JAVA_HOME%\bin;" + [Environment]::GetEnvironmentVariable("PATH", "Machine")

[Environment]::SetEnvironmentVariable("JAVA_HOME", $java_home, "Machine")
[Environment]::SetEnvironmentVariable("CLASSPATH", $classpath, "Machine")
[Environment]::SetEnvironmentVariable("PATH", $path , "Machine")


Write-Host "配置JDK环境变量成功"