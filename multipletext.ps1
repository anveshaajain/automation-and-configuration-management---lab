$folderPath = "C:\AutomationLab"

if (-not (Test-Path $folderPath)) {
    New-Item -Path $folderPath -ItemType Directory
}

for ($i = 1; $i -le 5; $i++) {
    New-Item -Path "$folderPath\File$i.txt" -ItemType File -Force
}

Write-Host "5 text files created successfully in $folderPath"