Import-Module "$PSScriptRoot\functions\add-project.psm1"

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
  }
}
catch {
  Write-Error $_.Exception.Message
}