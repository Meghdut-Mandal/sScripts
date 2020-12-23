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

choco install googlechrome vlc 7zip qbittorrent freedownloadmanager telegram adoptopenjdk yarn webstorm intellijidea-ultimate  --ignore-checksums
