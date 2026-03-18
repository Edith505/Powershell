function convertion_ip {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [String]$ip
    )

    $octets = $ip -split "\."

    if($octets.count -ne 4){
        Throw "IP non valide"
    }

    $resultat = @()

    foreach($octet in $octets){
        $nombre = $octet -as [int]

        if ($nombre -eq $null -or $nombre -lt 0 -or $nombre -gt 255){
            Throw "IP non valide"
        }

        $binaire = [Convert]::ToString($nombre,2).PadLeft(8,"0")
        $resultat += $binaire
    }

    $ipBinaire=$resultat -join "."
    Write-Output "IPV4 en décimal : $($ip)"
    Write-Output "IPV4 en binaire : $($ipBinaire)"
}

convertion_ip