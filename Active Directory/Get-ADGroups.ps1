#script dat alle groepen weergeeft waar een gebruiker in zit en deze in een CSV bestand zet. 

#welke gebruiker wil je zoeken (verkorte gebruikersnaam)
$user = ""
#locatie waar csv naartoe moet
$path = "" #kan gewoon bestandsnaam zijn, maar best een pad.


$groups = Get-ADUser $user -Properties MemberOf | Select-Object -ExpandProperty MemberOf

$groupObjects = $groups | ForEach-Object {
    [PSCustomObject]@{
        GroupName = $_
    }
}

$groupObjects | Export-Csv -Path $path -NoTypeInformation


