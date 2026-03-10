$employes = Import-Csv -path "Pratique 2\Exercice 2\employes.csv" -Header "Nom","Salaire" -Delimiter ";"

$topSalaire = 0
foreach($emp in $employes){
    $salaire = $emp.Salaire -as [int]

    if ($salaire -ne $null) {
        if($salaire -gt 50000){
            $obj = [PSCustomObject]@{
                nom = $emp.Nom
                salaire = $emp.Salaire
            }

            Write-Output "Nom: $($obj.nom) - Salaire: $($obj.salaire)"
        }
    }
    if($salaire -gt $topSalaire){
        $topSalaire = $salaire
    }
}

Write-Output "Top salaire: $($topSalaire)"
