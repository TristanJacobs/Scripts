$username = ""
$path = ""


$groups = Import-Csv -Path $path

# Loop through each group in the CSV
foreach ($group in $groups) {
    # Add the user to the group
    Add-ADGroupMember -Identity $group.GroupName -Members $username
}

Write-Host "De groepen zijn toegevoegd aan de gebruiker $username."