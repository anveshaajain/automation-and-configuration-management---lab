$website = Read-Host "Enter website name (example: google.com)"

if (Test-Connection -ComputerName $website -Count 1 -Quiet) {
    Write-Host "Internet connection to $website is available"
} else {
    Write-Host "Internet connection to $website is NOT available"
}