# powershell 笔记

**出于整理项目的原因,本仓库不再更新,如果以后还会更新的话统一放到[我的学习笔记仓库](https://github.com/techstay/studyNotes/tree/main/powershell)中.**

我的 Powershell 笔记，记录了学习 Powershell 的一些经验记录。

- [pwsh-samples](./pwsh-samples/README.md)，powershell 示例代码
- [techstay-util](./techstay-utils/README.md)，我的 pwsh 工具库
  - ChangeDefaultCodePageToUtf8，将终端代码页修改为 UTF8 编码
  - ChangeNtpServer,设置系统 NTP 服务器,支持国家授时中心,阿里云以及苹果服务器
  - CheckDotnetVersion，检测并显示当前安装的所有.NET 版本
  - OptimizeServices，一个简单的服务优化脚本，会停止并关闭列表中服务的自启状态
  - SetGradleEnv，将 gradle 的编码设置为 UTF8
  - SetPublicDns,设置公共 DNS 服务器的脚本,支持阿里云,DNSPod 和 114
  - ToggleWin11ContextMenu,切换 Win11 新版右键菜单和传统菜单

## 环境配置

### 开发环境

首先要安装最新版的 powershell，推荐使用 winget 安装，虽然也可以通过 scoop 下载安装，不过 vscode 和 windows terminal 等程序不会识别，需要自己手动配置 powershell 的位置，反而麻烦一些。

- 直接下载 <https://github.com/PowerShell/PowerShell/releases>
- winget `winget install microsoft.powershell`

vscode 需要安装以下扩展，并按照下面进行配置。

- powershell
- Code Runner

```json
{
  "[powershell]": {
    "editor.defaultFormatter": "ms-vscode.powershell"
  },
  "editor.formatOnSave": true,
  "editor.renderControlCharacters": true,
  "editor.renderWhitespace": "all",
  "files.autoGuessEncoding": true,
  "files.autoSave": "onFocusChange",
  "powershell.buttons.showPanelMovementButtons": true,
  "powershell.codeFormatting.autoCorrectAliases": true,
  "powershell.codeFormatting.avoidSemicolonsAsLineTerminators": true,
  "powershell.codeFormatting.pipelineIndentationStyle": "IncreaseIndentationAfterEveryPipeline",
  "powershell.codeFormatting.preset": "OTBS",
  "powershell.codeFormatting.trimWhitespaceAroundPipe": true,
  "powershell.codeFormatting.useConstantStrings": true,
  "powershell.codeFormatting.useCorrectCasing": true,
  "powershell.codeFormatting.whitespaceBetweenParameters": true,
  "powershell.integratedConsole.forceClearScrollbackBuffer": true,
  "powershell.integratedConsole.suppressStartupBanner": true,
  "powershell.powerShellDefaultVersion": "PowerShell Core 7(x64)",
  "powershell.promptToUpdatePowerShell": false,
  "code-runner.executorMap": {
    "powershell": "pwsh -ExecutionPolicy ByPass -NoProfile -File"
  }
}
```

运行代码直接使用右上角的运行按钮，或者从菜单栏选择*运行->以非调试模式运行*或者按*Ctrl+F5*。

还可以额外安装几个 powershell 模块,增加额外的功能.

```powershell
Install-Module -Name PSScriptAnalyzer -Force
Install-Module -Name Pester -Force -SkipPublisherCheck
Install-Module Microsoft.PowerShell.Crescendo -Force
Install-Module Microsoft.PowerShell.SecretManagement
Install-Module Microsoft.PowerShell.SecretStore
```

### 终端美化

美化方法参考我的[笔记](https://studynotes.techstay.tech/notes/windows/WindowsTerminalExperience.html)，配置文件参考我的[dotfiles](https://github.com/techstay/dotfiles-windows/blob/main/Documents/PowerShell/Microsoft.PowerShell_profile.ps1)

## 学习

### 官方文档

官方文档目录 <https://docs.microsoft.com/en-us/powershell/scripting/how-to-use-docs>

关于主题包含了 powershell 的语法知识，如果需要了解基本的语法，就可以查阅这里。

<https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about>

powershell 的常用命令，如果需要了解 powershell 的命令就查看这里。

<https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core>

要将 powershell 命令组合成实用的脚本，还需要一些辅助命令，可以在这里查看。

- [microsoft.powershell.management](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/)
- [Microsoft.powershell.utility](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/)

想要深入了解 powershell 的话，继续阅读文档。

<https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/overview>

### Powershell 101

官方文档还有一本电子书[Powershell 101](https://docs.microsoft.com/en-us/powershell/scripting/learn/ps101/00-introduction)，也是一本很好的 powershell 学习材料。
