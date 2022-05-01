# Variables.
$BasePath = "~\Documents\PowerShell"

# Imports.
Import-Module posh-git
Import-Module oh-my-posh

# Theme.
Set-PoshPrompt $BasePath"\Themes\tpikl.omp.json"

# Personal Imports.
Import-Module $BasePath"\Scripts\Tpikl\shortcuts.ps1"
Import-Module $BasePath"\Scripts\Tpikl\git-shortcuts.ps1"
