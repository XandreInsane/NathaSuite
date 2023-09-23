@echo off

color b
title Graber Password Wifi

netsh wlan show profile

echo Enter name of wifi (No wifi space) : 
echo.
set /p wifi=Wifi:
echo.
pause
echo.
netsh wlan show profile name=%wifi% key=clear

pause
exit