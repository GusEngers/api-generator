function AddProject ([string]$oPath, [string]$nPath) {
  Write-Host "Copiando archivos ..."
  New-Item -Path "$nPath" -ItemType Directory -OutVariable none | Out-Null
  Copy-Item -Path "$oPath\source\*" -Destination ".\$nPath" -Recurse -Force
  Write-Host "... archivos copiados"
}