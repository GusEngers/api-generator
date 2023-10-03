function InstallDep ([string]$nPath) {
  $PackageManager = Read-Host "Ingrese su administrador de paquetes (npm o pnpm)"
  if ($PackageManager -eq "npm") {
    Write-Host "Instalando dependencias con npm ..."
    Set-Location ".\$nPath"
    npm install
    Write-Host "... dependencias instaladas ¡Ya puedes empezar a editar su aplicación!"
  }
  elseif ($PackageManager -eq "pnpm") {
    Write-Host "Instalando dependencias con pnpm ..."
    Set-Location ".\$nPath"
    pnpm install
    Write-Host "... dependencias instaladas ¡Ya puedes empezar a editar su aplicación!"
  }
  else {
    Remove-Item -Path "./$nPath" -Recurse -Force -OutVariable none | Out-Null
    throw "Sólo puede elegir npm o pnpm"
  }
}