$temperatures = Import-Csv -Path "Pratique 2\Exercice 3\temperatures.csv" -Delimiter ";" -Header "Jours","Degres"
$temMax = 0

foreach($t in $temperatures){
    $temperature = $t.Degres -as [int]

    if ($temperature -ne $null) {
        if($temperature -gt 20){
            $obj = [PSCustomObject]@{
                jours = $t.Jours
                temperature = $temperature
            }
            Write-Output "Jour: $($obj.jours) -  Temperature: $($obj.temperature)"
        }
    }

    if ($t.Degres -gt $temMax) {
        $temMax = $t.Degres
    }
}

Write-Output "Temperature maximal : $($temMax)"