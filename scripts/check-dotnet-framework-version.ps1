# 判断系统当前安装.NET框架版本的脚本

$path = 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full'
$not_found_msg = ".net framework 4.5 or later not installed on your system"

function CheckFor45PlusVersion([int] $releaseKey) {
    if ($releaseKey -ge 460798) {
        return "4.7 or later";
    }
    if ($releaseKey -ge 394802) {
        return "4.6.2";
    }   
    if ($releaseKey -ge 394254) {
        return "4.6.1";
    }
    if ($releaseKey -ge 393295) {
        return "4.6";
    }
    if (($releaseKey -ge 379893)) {
        return "4.5.2";
    }
    if (($releaseKey -ge 378675)) {
        return "4.5.1";
    }
    if (($releaseKey -ge 378389)) {
        return "4.5";
    }
   	return $not_found_msg;
}

   
try {
    $key = get-item $path
    $releaseKey = Get-ItemPropertyValue $path 'release'
    if ($releaseKey -is [int]) {
        $releaseKey = [int]$releaseKey
        $version = CheckFor45PlusVersion($releaseKey)
        Write-Host ".NET framework ${version}"
    }
    else {
        Write-Host $not_found_msg
    }
}catch {
    Write-Host $not_found_msg
}
