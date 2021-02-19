# sScripts

This repo  contains the scripts i need frequently :

0. Installing Pritunnel VPN
1. Installing all the required Software on a Windows server 2019 via chocolaty
2. Installing and Activating office 19 
3. Fileserver Using Caddy
4. Speed Test

To execulte them

## For Windows deplyment:-
Open PowerShell and run the command

Invoke-WebRequest -OutFile comm.bat -Uri https://github.com/Meghdut-Mandal/sScripts/raw/main/windows_deploy_v2.bat; .\comm.bat ;

## For setting up dev Environment in Windows:-
This one first installs the reqirements and then other dev dependencies 


## For Pritunl Deplyment:-
This requires Ubuntu Bionic

sh -c "$(wget https://raw.githubusercontent.com/Meghdut-Mandal/sScripts/main/pritunl.sh -O -)"

## For Caddy File Server 
This requires Ubuntu Bionic

sh -c "$(wget https://github.com/Meghdut-Mandal/sScripts/raw/main/caddy_fileserver.sh -O -)"

## For speed test 
This requires Ubuntu Bionic

sh -c "$(wget https://github.com/Meghdut-Mandal/sScripts/raw/main/linux_speed_test.sh -O -)"
