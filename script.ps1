$servName = Read-Host "Veuillez saisir le nom du service : "
$services = Get-Service | where { $_.name -like "*$servName*"}
if ($services.Count -gt 0)
{
    foreach($serv in $services)
    {
        Write-Host -foregroundcolor Red $serv.DisplayName - $serv.Name " " Status : $serv.Status
        $count++
    }
}
