$path = Read-Host "Enter the directory path"

$filecount = (Get-ChildItem -Path $path -File).Count
Write-Host "Number of files in the Directory: $filecount"