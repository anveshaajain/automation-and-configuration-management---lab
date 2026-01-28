$marks = Read-Host "Enter student marks"
$marks = [int]$marks  

if ($marks -ge 90) {
    Write-Host "Grade: A+"
}
elseif ($marks -ge 80) {
    Write-Host "Grade: A"
}
elseif ($marks -ge 70) {
    Write-Host "Grade: B"
}
elseif ($marks -ge 60) {
    Write-Host "Grade: C"
}
elseif ($marks -ge 40) {
    Write-Host "Grade: D"
}
else {
    Write-Host "Grade: Fail"
}
