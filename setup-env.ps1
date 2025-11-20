# Setup script for Student Management System
# Run this before building or running the project

$env:JAVA_HOME="$env:USERPROFILE\.jdks\corretto-17.0.15"
$env:PATH="$env:JAVA_HOME\bin;$env:PATH"

Write-Host "Environment configured successfully!" -ForegroundColor Green
Write-Host "JAVA_HOME: $env:JAVA_HOME" -ForegroundColor Cyan
Write-Host ""
Write-Host "You can now run Maven commands:" -ForegroundColor Yellow
Write-Host "  .\mvnw clean install" -ForegroundColor White
Write-Host "  .\mvnw spring-boot:run" -ForegroundColor White
