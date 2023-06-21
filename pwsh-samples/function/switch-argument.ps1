function SwitchLight {
  param(
    [switch]$On
  )
  if ($On) {
    Write-Output 'Turn on the light'
  } else {
    Write-Output 'Turn off the light'
  }
}

SwitchLight
SwitchLight -On
SwitchLight -On:$false
