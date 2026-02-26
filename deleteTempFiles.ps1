$limit = (Get-Date).AddDays(-30)

Get-ChildItem "C:\Temp" -Filter *.tmp |
Where-Object { $_.LastWriteTime -lt $limit } |
Remove-Item -Confirm