# Exercice 1
$prenom = "John"
$age = 30

write-host "Je m'appelle $prenom et j'ai $age ans."

# Exercice 2
$a = 10
$b = 5

$somme = $a + $b
write-host "$a + $b = $somme"

# Exercice 3
$age = Read-Host "Entrez votre âge "
if($age -le 18) {
    write-host "Mineur."
} else {
    write-host "Majeur."
}

# Exercice 4
$fruits = @('fraise', 'cerise', 'mangue', 'pomme', 'banane')
foreach($fruit in $fruits) {
    write-host $fruit
}

# Exercice 5
for($i = 1; $i -le 10; $i++) {
    write-host $i
}

# Exercice 6
New-Item test.txt -ItemType File -Force
set-content test.txt "Bonjour Powershell"
$fruits = @('fraise', 'cerise', 'mangue', 'pomme', 'banane')
foreach($fruit in $fruits) {
     Add-Content test.txt $fruit
}
Get-Content .\test.txt

# Exercice 7
Get-Service | Where-Object { $_.Status -eq "Stopped" }

# Exercice 8
$ram = 100
Get-Process | Where-Object { $_.WorkingSet -gt $ram  }

# Exercice 9
$personne = [PSCustomObject]@{
    Name = "Eddy"
    Ville = "Québec"
    Age = 30
}

Write-Host $personne.Age
Write-Host $personne.Name
Write-Host $personne.Ville

# Exercice 10
$personnes = Import-Csv -Path "E:\Code\AutomatisationDesTachesTP-1\Powershell\personne.csv" -Delimiter ";" -Header "Nom","Age"

foreach($personne in $personnes){
    if ([int]$personne.Age -ge 18){
        Write-Host $personne.Nom
    } 
}

# Exercice 11
$nombre = Read-Host "Ecrivez votre nombre "
for($i = 0; $i -le $nombre; $i++){
    Write-Host $i
}

# Exercice 12
[string]$mdp = ""
do{
    [string]$mdp = Read-Host "Entrer un mot de passe"
}while ([string]$mdp -eq "")

Write-Host $mdp

# Exercice 13
$nomservice =  Read-Host "Le nom du service "
$service = get-service -name $nomservice

if($service.status -eq "Running"){
    write-host "service en cours d'execusion"
}elseif ($service -eq $null) {
    Write-Host "service introuvable"
}else {
    Write-Host "service arrêté"
}

# Exercice 14
$notes = @(12,25,15,16)
$max = 0

foreach($note in $notes){
    if($note -gt $max){
        $max = $note
     }   
 }   

 Write-Host "la note max est $max"

# Exercice 15
Get-Module -ListAvailable
Get-Command -Module Microsoft.PowerShell.Management

get-command -CommandType Cmdlet