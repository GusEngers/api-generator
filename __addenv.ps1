$Envs = [Environment]::GetEnvironmentVariable("PATH", "User")

if ($Envs -split ";" -notcontains $PSScriptRoot) {
  $new = "$Envs;$PSScriptRoot"
  [Environment]::SetEnvironmentVariable("PATH", $new, "User")
  $env:Path = $new
  Write-Host "Se agregó la nueva variable de entorno, ya puede ejecutar 'api' desde PowerShell"
}
else {
  Write-Error "La variable de entorno ya existe en el sistema, puede ejecutar 'api' desde PowerShell"
}
