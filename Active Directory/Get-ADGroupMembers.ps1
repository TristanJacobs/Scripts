$group = "Gemeente"

Get-ADGroupMember $group | Select-Object SamAccountName | Export-Csv -Path '.\Active Directory\export.csv'

Import-csv '.\Active Directory\export.csv'

