$valide = $false

while ($valide -eq $false) {
    $date = Read-Host "Enter une date"

    $conversion =  $date -as [datetime]

    if($conversion -ne $null){
        $valide = $true
    }
}
Write-Output "$($conversion)"

$maintenant = Get-Date
$restant = $maintenant - $conversion

$obj = [PSCustomObject]@{
    Jours = $restant.Days
    Heures = $restant.Hours
    Minutes =  $restant.Minutes
    Seconde = $restant.Seconds
}

Write-Output "Jours : $($obj.Jours) - Heures : $($obj.Heures) - Minutes : $($obj.Minutes) - Seconde : $($obj.Seconde)"