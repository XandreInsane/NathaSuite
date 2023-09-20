@echo off
color b
title Wifi Dos

echo IPv4
echo.
ipconfig | findstr IPv4
echo.
echo Ipv6
ipconfig | findstr IPv6
echo.

echo Enter IP wifi :
set /p IP="Ip: "
echo %Ip% >> ipwifi.txt

start wifiatt.bat
exit