# Exercice 1 : Trouver le paramètre à la position 0 de Get-Service
Get-Help Get-Service -Full
<#
    -Name
#>

# Exercice 2 : Vérifier si Get-Service a un paramètre obligatoire
<#
    -DisplayName
#>

# Exercice 3 : Trouver les paramètres pipeline de Get-Service
<#
    -InputObject
    -Name
#>

# Exercice 4 : Trouver le type d’objet retourné par Get-Service
Get-Service | Get-Member
# System.Service.ServiceController#StartupType

# Exercice 5 : Construire un chemin vers le bureau de l’utilisateur
$chemin = Join-Path $env:USERPROFILE "Desktop"

# Exercice 6 : Vérifier si un dossier existe
Test-Path "C:\Windows"

# Exercice 7 : Afficher uniquement le dossier parent d’un chemin
Split-Path "C:\Users\Admin\notes.txt" -Parent

