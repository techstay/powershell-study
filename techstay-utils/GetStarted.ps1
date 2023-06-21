# ------------------------------------------------------------------------------
# 将我的Powershell模块复制到powershell模块文件夹中
# ------------------------------------------------------------------------------

$moduleDirectory = Join-Path ([Environment]::GetFolderPath('MyDocuments')) '\Powershell\Modules'
New-Item -Path (Join-Path $moduleDirectory $PSScriptRoot.Split('\')[-1]) -Type SymbolicLink -Force -Value $PSScriptRoot
