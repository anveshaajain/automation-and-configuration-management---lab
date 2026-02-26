Get-Service |
Where-Object { $_.Status -ne "Running" } |
Sort-Object Name |
Format-List Name, DisplayName, Status