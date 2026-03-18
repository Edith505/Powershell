# Créer 10 dossiers principaux nommés Projet01 etc .
$cheminRacine = Join-Path (Get-Location).Path "Pratique 4"

foreach ($i in 1..10){
    $numeroProjet = $i.ToString("00")
    $dossierProjet = "Projet" + $numeroProjet
    
    $cheminProjet = Join-Path $cheminRacine $dossierProjet
    
    New-Item -Path $cheminProjet -ItemType Directory -Force | Out-Null

    $cheminDoc = Join-Path $cheminProjet "Documentation"
    $cheminCode = Join-Path $cheminProjet "Code"
    $cheminTests = Join-Path $cheminProjet "Tests"

    New-Item -Path $cheminDoc -ItemType Directory -Force | Out-Null
    New-Item -Path $cheminCode -ItemType Directory -Force | Out-Null
    New-Item -Path $cheminTests -ItemType Directory -Force | Out-Null

    $cheminReadme = Join-Path $cheminDoc "README.md"
    New-Item -Path $cheminReadme -ItemType File -Force | Out-Null

    $script = Join-Path $cheminCode "script.ps1"
    New-Item -Path $script -ItemType File -Force | Out-Null
}

