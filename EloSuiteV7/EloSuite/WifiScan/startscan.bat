@echo off
color b
title Scan Wifi


echo.
echo List IP network :
arp -a
echo.


echo IPv4 wifi :
echo.
ipconfig|findstr "Adresse IPv4"
echo.
echo IPv6 network :
echo.
ipconfig|findstr "Adresse IPv6"
pause
exit