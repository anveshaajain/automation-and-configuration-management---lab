Get-Service -ErrorAction SilentlyContinue |
Where-Object { $_.Status -eq "Running" } |
Select-Object Name, DisplayName, Status |
Export-Csv "RunningServicesReport.csv" -NoTypeInformation