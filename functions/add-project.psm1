function AddProject ([string]$oPath, [string]$nPath) {
  New-Item -Path "$nPath" -ItemType Directory
  Copy-Item -Path "$oPath\.gitignore" -Destination ".\$nPath" -Recurse -Force
}