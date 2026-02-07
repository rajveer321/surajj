# Run this PowerShell script from the project folder to create resume.pdf
# Usage: Right-click -> Run with PowerShell, or from PowerShell prompt:
#   cd d:\Portfolio\Suraj
#   .\create-resume.ps1

$base64 = Get-Content -Raw -Path .\resume.b64
[System.IO.File]::WriteAllBytes("resume.pdf", [System.Convert]::FromBase64String($base64))
Write-Host "resume.pdf created successfully in the current folder."