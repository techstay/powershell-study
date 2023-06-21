# data type

function Inspect {
  param(
    $var
  )
  '{0,-30}{1}' -f $var.GetType() , $var
}

Inspect(123)
Inspect(3.1415)
Inspect([float]3.1415)
Inspect('hello world')
Inspect([decimal]3.1415)
Inspect(@(1, 2, 3))
Inspect([int[]]@(1, 2, 3))
Inspect([string[]]@('1', '2', '3'))
Inspect(@{a = 1; b = 2; c = 3 })
Inspect(Get-Date)
