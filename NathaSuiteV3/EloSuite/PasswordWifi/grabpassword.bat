@echo off

color b
title Graber Password Wifi

netsh wlan show profile

echo Entrer le nom du wifi :
echo.
set /p wifi=Wifi:

pause

netsh wlan show profile name=%wifi% key=clear

pause