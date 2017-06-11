# 系统优化脚本，会停止列表中对应的服务并关闭自启

$app = @(    "QiyiService" #爱奇艺
    , "PPTVService"   #PPTV
    , "XLNXService" #迅雷游戏
)

$services = Get-Service|Select-Object Name
foreach ($service in $services) {
    if ($app -contains $service.Name) {
        Stop-Service -InputObject $service
        Set-Service -InputObject $service -StartupType Manual
        Write-Host "停止了$($service.Name)"
    }
}