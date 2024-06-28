#Dit script maakt een CSV bestand met een export van alle gebruikers in de geselecteerde OU.
$OU = "" #OU waar je de users uit wilt halen
$path = "" #export pad 

Get-ADUser -Filter * -SearchBase $OU | Select-Object SamAccountName | Export-CSV -Path $path