class Voiture{
    [string]$serie
    [int]$anne
    [string]$marque
    [string]$model

    Voiture($serie,$anne,$marque,$model){
        $this.serie = $serie
        $this.anne = $anne
        $this.marque = $marque
        $this.model = $model
    }
}

$v = [Voiture]::new("12345s",2025,"kia","pride")


$obj = [PSCustomObject]@{
    serie = $v.serie
    anne = $v.anne
    marque = $v.marque
    model = $v.model
}

$obj


