# reading environment variables
$Env:windir
$Env:JAVA_HOME

# setting env var temporarily
$env:my_var = '666'
$env:my_var

# setting env var permanently
[Environment]::SetEnvironmentVariable('Foo', 'Bar', 'User')

# deleting env var
[Environment]::SetEnvironmentVariable('Foo', '', 'User')
