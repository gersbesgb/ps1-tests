# powershell -ExecutionPolicy Bypass -Command "Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/gersbesgb/ps1-tests/main/linkconvo.ps1')"

Clear-Host

Write-Host "=======================================================" -ForegroundColor Red
Write-Host "[ GersBes ]" -ForegroundColor Red -NoNewline
Write-Host "GitHub Link Converter v1.0.0" -ForegroundColor Red
Write-Host "=======================================================" -ForegroundColor Red

Write-Host ""
Write-Host "Paste everything after github.com/" -ForegroundColor Yellow
Write-Host "Example: gersbesgb/GersBes-Download-Checker/blob/main/GersBes-Download-Checker.ps1" -ForegroundColor Yellow
Write-Host ""
$userInput = Read-Host "Path"

$rawPath = $userInput -replace "/blob/", "/"
$fullRawLink = "https://raw.githubusercontent.com/$rawPath"

$command = "powershell -ExecutionPolicy Bypass -Command `"Invoke-Expression (Invoke-RestMethod '$fullRawLink')`""

Write-Host "`n===============================================================================================" -ForegroundColor DarkMagenta
Write-Host $command -ForegroundColor DarkMagenta
Write-Host "===============================================================================================" -ForegroundColor DarkMagenta
