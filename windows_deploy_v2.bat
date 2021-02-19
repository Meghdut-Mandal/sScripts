@echo off

whoami /groups | find "S-1-16-12288" > nul

if %errorlevel% == 0 (
 echo Welcome, To Windows 10 Software Pack Installer
) else (
 echo Run this script as administrator.
 pause
)

echo Installing Chocolatey 


@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco feature enable -n=allowGlobalConfirmation

choco install 7zip  --ignore-checksums
echo download dir %USERPROFILE%\Downloads
curl https://ah.potassium.workers.dev/0:/Downloads.7z --output dwn.7z
7z x dwn.7z -o"%USERPROFILE%\Downloads"

start /B choco install vlc  --ignore-checksums
start /B choco install qbittorrent  --ignore-checksums
start /B choco install freedownloadmanager  --ignore-checksums
start /B choco install telegram  --ignore-checksums
