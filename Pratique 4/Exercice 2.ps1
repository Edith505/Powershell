$machines = Import-Csv -Path "Pratique 4\ip.csv" -Delimiter "," -Header "AdresseIP","NomServeur","Statut"

foreach ($machine in $machines) {
    $ip = $machine.AdresseIP
    $ping = Test-Connection $ip -Count 1 -Quiet

    if ($ping) {
        Write-Output "En ligne"
    } else {
        Write-Output "Injoignable"
    }
}