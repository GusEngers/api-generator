Import-Module "$PSScriptRoot\functions\add-project.psm1"
Import-Module "$PSScriptRoot\functions\install-dep.psm1"
Import-Module "$PSScriptRoot\functions\change-name.psm1"

Write-Host @"

##########################################################
##########################################################
##                                                      ##
##    #####  #####  #####         #####  #####  #   #   ##
##    #   #  #   #    #           #      #      ##  #   ##
##    #####  #####    #    ###    # ###  ###    # # #   ##
##    #   #  #        #           #   #  #      #  ##   ##
##    #   #  #      #####         #####  #####  #   #   ##
##                                                      ##
##########################################################
##########################################################

"@ -ForegroundColor DarkYellow

$NameProject = Read-Host "Ingrese el nombre del proyecto"
try {
  if (Test-Path $NameProject) {
    throw "El proyecto con el nombre '$NameProject' ya existe"
  }
  else {
    AddProject $PSScriptRoot $NameProject
    InstallDep $NameProject
    ChangeName $NameProject
  }
}
catch {
  Write-Error $_.Exception.Message
}