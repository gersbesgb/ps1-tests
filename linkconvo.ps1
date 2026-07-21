Clear-Host
Write-Host "=======================================================" -ForegroundColor Red
Write-Host " [ GersBes ] " -ForegroundColor Red -NoNewline
Write-Host "-> GitHub Link Converter v1.0.0" -ForegroundColor Red
Write-Host "=======================================================" -ForegroundColor Red

$userInput = Read-Host "Paste everything after github.com/"
!Write-Host "Example: gersbesgb/GersBes-Download-Checker/blob/main/GersBes-Download-Checker.ps1" -ForegroundColor Purple


$rawPath = $userInput -replace "/blob/", "/"
$fullRawLink = "https://raw.githubusercontent.com/$rawPath"

Write-Host "`n===============================================================================================" -ForegroundColor Purple

$command = "powershell -ExecutionPolicy Bypass -Command `"Invoke-Expression (Invoke-RestMethod '$fullRawLink')`""

Write-Host $command -ForegroundColor Purple
Write-Host "===============================================================================================" -ForegroundColor Purple
