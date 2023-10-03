function ChangeName ([string]$name) {
  Write-Host "Iniciando ajustes finales ..."
  $json = Get-Content -Path ".\package.json" | ConvertFrom-Json
  $json.name = $name
  $json | ConvertTo-Json | Set-Content -Path ".\package.json"
  Write-Host "... ajustes finalizados ¡Ya puedes empezar a editar su aplicación!"
}