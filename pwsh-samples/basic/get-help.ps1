Get-Verb 'a*'

Get-Command -Name '*Process'

# find cmdlets that accept Process ParameterType
Get-Command -ParameterType Process

Get-Command -Verb Get -Noun U*

# display an external help window
help Get-Command -Full | Out-GridView

# open online help page in browser
Get-Help Get-Command -Online
