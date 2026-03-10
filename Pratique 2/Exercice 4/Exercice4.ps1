$etudiants = Import-Csv -Path "Pratique 2\Exercice 4\etudiants.csv" -Header "nom","note" -Delimiter ";"
$meilleurNote = 0

foreach($etu in $etudiants){
 
    $note = $etu.note -as [float]
    if($note -ne $null){
        if ($note -gt 80) {
            $obj = [PSCustomObject]@{
                nom = $etu.nom
                note = $note
            }
            Write-Output "Nom: $($obj.nom) - Note: $($obj.note)"
        }
        if($note -gt $meilleurNote){
            $meilleurNote = $note
        }
    }
}
Write-Output "Meilleur note : $($meilleurNote)"