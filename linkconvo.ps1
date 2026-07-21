Clear-Host

Write-Host " [ GersBes ] " -ForegroundColor Red -NoNewline
Write-Host "-> GitHub Link Converter v1.0.0" -ForegroundColor Cyan
Write-Host "=======================================================" -ForegroundColor DarkGray

$userInput = Read-Host "Paste everything after github.com/"
Write-Host "Example: gersbesgb/GersBes-Download-Checker/blob/main/GersBes-Download-Checker.ps1" -ForegroundColor Yellow
$rawPath = $userInput -replace "/blob/", "/"
$fullRawLink = "https://raw.githubusercontent.com/$rawPath"

Write-Host "`n===============================================================================================" -ForegroundColor Purple
# 3. Output the full PowerShell web cradle
$command = "powershell -ExecutionPolicy Bypass -Command `"Invoke-Expression (Invoke-RestMethod '$fullRawLink')`""

Write-Host $command -ForegroundColor Purple
Write-Host "===============================================================================================" -ForegroundColor Purple
