Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

#Create an alias k for kubectl
Set-Alias k kubectl

#Create an alias ss and grep for Select-String
Set-Alias grep Select-String

function kcgc {
  #Create an alias kcgc
  kubectl config get-contexts
}

function kcuc ($context, $namespace){
  #Create an alias kcuc
  kubectl config use-context $context --namespace $namespace
}

function kcsc($context, $namespace)
{
  #Create an alias kcsc
  kubectl config set-context $context --namespace $namespace
}
