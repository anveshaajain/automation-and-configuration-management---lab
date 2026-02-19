Get-Process | 
Sort-Object Working -Descending |
Select-Object -First 7 `
     ProcessName,
     Id,
     @{Name="Memory(MB)"; Expression={[math]::Round($_.WorkingSet / 1MB, 2)}} |
Format-Table -AutoSize     