$filePath = Read-Host "Enter the text file path"

if (Test-Path $filePath) {
    Get-Content $filePath
} else {
    Write-Host "File not found"
}
