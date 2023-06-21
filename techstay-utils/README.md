# techstay-utils

我的 powershell 库，包含了一些实用工具。使用之前需要在项目目录里执行`GetStarted.ps1`将目录以符号链接的方式创建到 powershell 模块目录中.要查看使用说明的话,使用`Get-Help <脚本名>`命令.

工具列表：

- ChangeDefaultCodePageToUtf8，将终端代码页修改为 UTF8 编码
- ChangeNtpServer,设置系统 NTP 服务器,支持国家授时中心,阿里云以及苹果服务器
- CheckDotnetVersion，检测并显示当前安装的所有.NET 版本
- OptimizeServices，一个简单的服务优化脚本，会停止并关闭列表中服务的自启状态
- SetGradleEnv，将 gradle 的编码设置为 UTF8
- SetPublicDns,设置公共 DNS 服务器的脚本,支持阿里云,DNSPod 和 114
- ToggleWin11ContextMenu,切换 Win11 新版右键菜单和传统菜单
