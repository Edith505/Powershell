function additionner {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [int]$nbr1 = 0,

        [Parameter(Mandatory=$true)]
        [int]$nbr2 = 0
    )

    $resultat = $nbr1 + $nbr2
    Write-Output $($resultat) 
}

function division {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [int]$a = 0,

        [Parameter(Mandatory=$true)]
        [ValidateRange(1,[int]::MaxValue)]
        [int]$b = 0
    )

    $div = $a / $b 
    Write-Output $($add) 
}
