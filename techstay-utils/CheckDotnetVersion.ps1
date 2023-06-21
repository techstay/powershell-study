# ------------------------------------------------------------------------------
# 判断系统当前安装.NET的版本
# 参考 https://docs.microsoft.com/en-us/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed
# ------------------------------------------------------------------------------

# ---------------------- Search .NET Framework Registry ------------------------

$registrySuffixes = @('v2.0.50727', 'v3.0', 'v3.5', 'v4\Full')

# 通过拼接注册表路径来查找.NET Framework版本
function CheckDotnetFrameworkVersion {
  param(
    $RegistrySuffix
  )
  $dotnetFrameworkRegistryBase = 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP'
  $dotnetFrameworkRegistryPath = Join-Path $dotnetFrameworkRegistryBase $RegistrySuffix
  $version = Get-ItemPropertyValue $dotnetFrameworkRegistryPath -Name 'Version' -ErrorAction SilentlyContinue
  if ($null -ne $version) {
    Write-Output ".NET Framework $version is installed."
  }
}

# ---------------------------- Search .NET Command -----------------------------
function SearchDotnetCommand {
  if (Get-Command 'dotnet' -ErrorAction SilentlyContinue) {
    $dotnetVersion = dotnet --version
    if ($dotnetVersion -match '^[123]*') {
      Write-Output ".NET Core $dotnetVersion is installed."
    } else {
      Write-Output ".NET $dotnetVersion is installed."
    }
  }
}

<#
.SYNOPSIS
  判断系统当前安装.NET的版本
.EXAMPLE
  CheckDotnetVersion
#>
function CheckDotnetVersion {
  foreach ($registrySuffix in $registrySuffixes) {
    CheckDotnetFrameworkVersion $registrySuffix
  }
  SearchDotnetCommand
}
