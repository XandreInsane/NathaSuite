@echo off
title EloSuite
cls
color b


:menu
echo =============ELO SUITE=============
echo.
echo Welcome on EloSuite by TheSpartan
echo.
echo.
echo Choose an option :
echo.
echo [1] Ip/Url Dos	[2] Keylog Fake prog		[3] Ip Shutdown
echo [4] Scan Wifi	[5] Graber Pass Wifi only	[6] Msg Generator
echo [7] Wifi Dos	[8] Wifi Pilote info		[9] Tracert server Website
echo [10] Credit	[11] Help                   	[12] Exit

echo.

set /p choix=Entree : 

if "%choix%"=="1" (
cd IpDos
start LobbyDOS.bat
cd..
cls
goto menu
)
if "%choix%"=="2" (
cd social-key
start LanchKeylog.bat
cd..
cls
goto menu
)
if "%choix%"=="3" (
cd Shutdown 
start Ipshutdown.bat
cd..
cls
goto menu
)
if "%choix%"=="4" (
cd Wifiscan 
start startscan.bat
cd..
cls
goto menu
)
if "%choix%"=="5" (
cd PasswordWifi 
start grabpassword.bat
cd..
cls
goto menu
)
if "%choix%"=="6" (
cd GeneratorMsg
start generatormsg.bat
cd..
cls
goto menu
)
if "%choix%"=="7" (
cd Wifidos 
start wifidos.bat
cd..
cls
goto menu
)
if "%choix%"=="8" (
cd WifiPilote 
start propwifi.bat
cd..
cls
goto menu
)
if "%choix%"=="9" (
cd TracertWeb
start tracertwebsite.bat
cd..
cls
goto menu
)
if "%choix%"=="10" (
cd ressource
start msgcredit.vbs
cd..
cls
goto menu
)
if "%choix%"=="11" (
cd ressource
start Help.txt
cd..
cls
goto menu
)

if "%choix%"=="12" (exit)



