@echo off
title NathaSuite
cls
color b

echo Bienvenue sur NathaSuite
echo.
echo.
echo Appuyer sur entrer pour lancer les differents programmes
echo.
echo.
pause

:menu
echo.
echo Chosissez une option :
echo.
echo 1 - Lancer Ip Url Dos
echo 2 - Lancer Crack Pronote
echo 3 - Lancer IP shutdown
echo 4 - Lancer Scan Wifi
echo 5 - lancer Graber Mot de passe wifi
echo 6 - Quittez
echo.

set /p choix=Entree :

if "%choix%"=="1" (
cd IpDos
start LobbyDOS.bat
cd..
goto menu
)
if "%choix%"=="2" (
cd crack_pronote
start Crack_prnt.bat
cd..
goto menu
)
if "%choix%"=="3" (
cd Shutdown 
start Ipshutdown.bat
cd..
goto menu
)
if "%choix%"=="4" (
cd Wifiscan 
start startscan.bat
cd..
goto menu
)
if "%choix%"=="5" (
cd PasswordWifi 
start grabpassword.bat
cd..
goto menu
)


if "%choix%"=="6" (exit)



