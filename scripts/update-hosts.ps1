# hosts文件，项目地址 https://github.com/racaljk/hosts
$hosts_url = "https://raw.githubusercontent.com/racaljk/hosts/master/hosts"
# hosts ipv6 文件，项目地址 https://github.com/lennylxx/ipv6-hosts
$hosts_ipv6_url = "https://raw.githubusercontent.com/lennylxx/ipv6-hosts/master/hosts"
# hosts文件版权遵循相应的项目LICENSE
$hosts = "C:\windows\system32\drivers\etc\hosts"
$hosts_backup = "C:\windows\system32\drivers\etc\hosts.bak"

$yes = 'yes'
$no = 'no'

# 获取用户选择
function read-choice([string]$prompt) {
    while ($true) {
        $line = Read-Host -Prompt $prompt
        $line = $line.ToLowerInvariant()
        if ($line -eq 'y') {
            return $yes
        }
        elseif ($Line -eq 'n') {
            return $no
        }
        else {
            Write-Host "input error,please try again"
        }
    }
}

# 备份文件
function backup-hosts {
    if (Test-Path $hosts_backup) {
        $choice = read-choice -prompt 'host backup exists, override it ?(y/n)'
        if ($choice -eq $yes) {
            Copy-Item $hosts -Destination $hosts_backup -Force
        }
    }
    else {
        Copy-Item $hosts -Destination $hosts_backup 
    }
}

# 下载文件
# type 是4则只下载ipv4 hosts
# type 是10则同时下载ipv4 和ipv6 hosts
function download-hosts ([int]$type) {
    if (-not(Test-Path $hosts_backup)) {
        $choice = read-choice -prompt "Do you wish to back up hosts ?(y/n)"
        if ($choice -eq $yes) {
            backup-hosts
        }
    }
    $ipv4_hosts = Invoke-WebRequest $hosts_url
    Out-File -InputObject $ipv4_hosts.content -FilePath $hosts -Force -Encoding Ascii
    if ($type -eq 10) {
        $ipv6_hosts = Invoke-WebRequest $hosts_ipv6_url
        Add-Content -path $hosts -Value $ipv6_hosts.content -Force -Encoding Ascii
    }
    after-update-host-hook
}

# 恢复备份的hosts文件
function restore-hosts {
    if (Test-Path $hosts_backup) {
        Copy-Item $hosts_backup $hosts -Force
        after-update-host-hook
    }
    else {
        Write-Host "hosts backup not found. Cannot restore !"
    }
}

# 更新完构造函数
function after-update-host-hook {
    Clear-DnsClientCache
}
$prompt = "
1. download ipv4 hosts
2. download ipv4 and ipv6 hosts
3. back up current hosts
4. restore hosts from backup
0. exit
"
while ($true) {
    $choice = Read-Host -Prompt $prompt
    switch ($choice) {
        1 {
            download-hosts -type 4
        }
        2 {
            download-hosts -type 10
        }
        3 {
            backup-hosts 
        }
        4 {
            restore-hosts       
        }
        0 {
            exit
        }
        default {
            Write-Host "input error,please try again"
        }
    }
}