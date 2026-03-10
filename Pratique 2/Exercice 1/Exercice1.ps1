$produits =  Import-Csv -Path "Pratique 2\Exercice 1\produits.csv" -Header "nom", "prix" -Delimiter ";"

$top = 0

foreach ($produit in $produits){
    $prix = $produit.prix -as [float]

    if ($prix -ne $null) {
        if($prix -gt 100){
           $obj =  [PSCustomObject]@{
                nom = $produit.nom
                prix = $produit.prix
            }
            Write-Output "Produit : $($obj.nom) - Prix : $($obj.prix)$"
        }

        if($prix -gt $top){
            $top = $prix
        }
    }
}

Write-Output "Le top prix est $($top)"