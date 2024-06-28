#script dat alle leden uit een AD groep haalt en deze op een locatie zet in een csv bestand dat door andere scripts gelezen kan worden. 
$group = ""
$path = "" #kan gewoon bestandsnaam zijn, maar best een pad. 

Get-ADGroupMember $group | Select-Object UserPrincipalName | Export-Csv -Path $path

