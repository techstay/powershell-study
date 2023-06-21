<#
.SYNOPSIS
  设置Gradle环境变量编码
#>
function SetGradleEnv {
  [Environment]::SetEnvironmentVariable('GRADLE_OPTS', '-Dfile.encoding=utf-8', 'User')
}
