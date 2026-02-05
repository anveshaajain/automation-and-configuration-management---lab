$path = "C:\Users\Anvesha\Desktop\AutomationLab"

$minSizeMB = 2
$daysBack = (Get-Date).AddDays(15)

Get-ChildItem -Path $path -File -Recurse |
Where-Object {
    ($_.Length / 1MB -gt $minSizeMB) -and
    ($_.LastWriteTime -ge $daysBack)
} |
Select-Object `
    Name,
    @{Name = "Size (MB)"; Expression = { "{0:N2}" -f ($_.Length / 1MB) }},
    LastWriteTime |
Format-Table -AutoSize
