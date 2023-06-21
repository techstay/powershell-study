# ------------------------------------------------------------------------------
# 系统优化脚本，会停止列表中对应的服务并关闭自启
# ------------------------------------------------------------------------------

$serviceNames = @(
  'QiyiService', # 爱奇艺
  'PPTVService', # PPTV
  'XLNXService' # 迅雷游戏
)

<#
.SYNOPSIS
  停止列表中对应的服务并关闭自启
.DESCRIPTION
  停止列表中对应的服务并关闭自启
#>
function OptimizeServices {
  Get-Service | Where-Object { $_.Name -in $serviceNames } | ForEach-Object {
    Stop-Service $_
    $_ | Set-Service -StartupType Manual
    Write-Output "停止了服务 $($_.Name), 并将其设置为手动启动"
  }
}
