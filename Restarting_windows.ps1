$stoppedServices = Get-Service | Where-Object { $_.Status -eq 'Stopped'}

$stoppedServices | 
Select-Object Name, Status |
Format- Table -AutoSize

$stoppedServices | ForEach-Object {
    Restart-Service -Name $_.Name -WhatIf
}