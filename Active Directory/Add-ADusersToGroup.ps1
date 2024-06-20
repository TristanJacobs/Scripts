Write-Host "Tot Welke groep moeten de personen toegevoegd worden?" -ForegroundColor Green
$group = Read-host "Groepsnaam"  #groep waaraan de personen worden toegevoegd.
$csv = '.\Active Directory\export.csv'

$users = Import-Csv -Path $csv

foreach ($user in $users){
    try{
        Add-ADGroupMember -Identity $group -Members $users.SamAccountName
        Write-Output "Added $($users.SamAccountName) to $group"
    } catch{
        Write-Output "Failed to add $($user.SamAccountName) to $group"
        Write-Host $_.Exception.Message
    }    
}
