$spaceBefore = (Get-PSDrive C).Used

Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:windir\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Clear-RecycleBin -Force -ErrorAction SilentlyContinue
Remove-Item "$env:LOCALAPPDATA\Microsoft\Windows\INetCache\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "C:\Windows\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:LOCALAPPDATA\Mozilla\Firefox\Profiles\*\cache2\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:APPDATA\Discord\Cache\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:LOCALAPPDATA\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "$env:USERPROFILE\Downloads\*.tmp" -Force -ErrorAction SilentlyContinue
Remove-Item "$env:USERPROFILE\Documents\*.log" -Force -ErrorAction SilentlyContinue

$spaceAfter = (Get-PSDrive C).Used
$freedMB = [math]::Round(($spaceBefore - $spaceAfter)/1MB,2)
Write-Host "Disk cleanup complete. Freed $freedMB MB" -ForegroundColor Green
