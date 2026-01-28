$things = @("book", "pen", "laptop", "mobile", "notebook")

for ($i = 0; $i -lt $things.Length; $i++) {
    Write-Host $things[$i]
}