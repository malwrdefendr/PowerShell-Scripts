Get-Content %USERPROFILE%\Downloads\AD-User-Check.txt 
$users = foreach $user in $list {Get-ADUser -Filter {Name -eq $user} -Properties *}
$users | Select-Object Name,SamAccountName,Mail,Enabled | Export-CSV -Path %USERPROFILE%\Downloads\results.csv -NoTypeInformation
