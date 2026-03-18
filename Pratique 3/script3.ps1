function  additionner {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [int]$nbr1,

        [Parameter(Mandatory=$true)]
        [int]$nbr2
    )
    $resultat = $nbr1 +$nbr2
    Write-Host $resultat  
}