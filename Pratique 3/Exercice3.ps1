function conversion {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true,
        ValueFromPipeline=$true,
        Position=0)]
        [ValidateScript({
            if($_ -gt 0){
                $true
            }else {
                Throw "Le nombre doit être superieur a 0"
            }
        })]
        [int]$decimal
    )

    $binaire=[Convert]::ToString($decimal,2)
    Write-Host $binaire
}
