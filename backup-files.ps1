$sourcePath = Read-Host "Enter source folder path"
$backupPath = Read-Host "Enter backup folder path"

if (-not (Test-Path $backupPath)) {
    New-Item -Path $backupPath -ItemType Directory
}

Copy-Item -Path "$sourcePath\*" -Destination $backupPath -Recurse -Force

Write-Host "Backup completed successfully!"
