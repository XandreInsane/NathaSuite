@echo off
color b
title Scan Wifi


echo.
echo Liste IP du resau :
arp -a
echo.


echo IPv4 :
echo.
ipconfig|findstr "Adresse IPv4"
pause