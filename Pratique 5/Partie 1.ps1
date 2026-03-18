# Q1. Le paramètre à la position 0
Get-Help Get-Process -Full
<#
    -Name
#>

# Q2. Quels paramètres sont obligatoires
<#
    -Id
    -IncludeUserName
    -InputObject
#>

# Q3. Quels paramètres acceptent les entrées du pipeline ?
<#
    -Id
    -InputObject
#>

# Q4. Quel type d’objets est retourné par Get-process
<#
    -System.Diagnostics.Process
#>
Get-Process | Get-Member

# Q5. Commandes pour manipuler les chemins (Path)
Get-Command -Noun Path

