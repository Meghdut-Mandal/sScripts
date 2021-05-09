@echo off

whoami /groups | find "S-1-16-12288" > nul

if %errorlevel% == 0 (
 echo Welcome, To Office 19 Installer
) else (
 echo Run this script as administrator.
 pause
)

echo Downloading Office Deploy tool 
curl "https://github.com/Meghdut-Mandal/sScripts/blob/main/setup.exe?raw=true" -O setup.exe
curl "https://raw.githubusercontent.com/Meghdut-Mandal/sScripts/main/config.xml" -O config.xml
setup.exe /configure config.xml

echo Activating Office 
cd /d %ProgramFiles%\Microsoft Office\Office16
for /f %x in ('dir /b ..\root\Licenses16\ProPlus2019VL*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%x"

cscript ospp.vbs /setprt:1688
cscript ospp.vbs /unpkey:6MWKP >nul
cscript ospp.vbs /inpkey:NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP
cscript ospp.vbs /sethst:kms8.msguides.com
cscript ospp.vbs /act

PAUSE
