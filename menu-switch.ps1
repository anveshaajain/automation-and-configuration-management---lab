do {
    Write-Host "------ MENU ------"
    Write-Host "1. Addition"
    Write-Host "2. Subtraction"
    Write-Host "3. Multiplication"
    Write-Host "4. Division"
    Write-Host "5. Exit"

    $choice = Read-Host "Enter your choice"

    if ($choice -eq 5) {
        Write-Host "Exiting program..."
        break
    }

    $a = [int](Read-Host "Enter first number")
    $b = [int](Read-Host "Enter second number")

    switch ($choice) {
        1 { $result = $a + $b }
        2 { $result = $a - $b }
        3 { $result = $a * $b }
        4 {
            if ($b -eq 0) {
                Write-Host "Cannot divide by zero"
                continue
            }
            $result = $a / $b
        }
        default {
            Write-Host "Invalid choice"
            continue
        }
    }

    Write-Host "Result: $result"
    Read-Host "Press Enter to continue"

} while ($true)
