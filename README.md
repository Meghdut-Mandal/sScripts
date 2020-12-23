# sScripts

This repo  contains the scripts i need frequently :

0. Installing Pritunnel VPN
1. Installing all the required Software on a Windows server 2019 via chocolaty
2. Installing and Activating office 19 
3. Fileserver Using Caddy

To execulte them

## For Windows deplyment:-
Open PowerShell and run the command

Invoke-WebRequest -OutFile comm.bat -Uri https://github.com/Meghdut-Mandal/sScripts/raw/main/windows_deploy.bat; .\comm.bat ;


## For Pritunl Deplyment:-
This requires Ubuntu Bionic

sh -c "$(wget https://raw.githubusercontent.com/Meghdut-Mandal/sScripts/main/pritunl.sh -O -)"

## For Caddy File Server 
This requires Ubuntu Bionic

sh -c "$(wget https://github.com/Meghdut-Mandal/sScripts/raw/main/caddy_fileserver.sh -O -)"

