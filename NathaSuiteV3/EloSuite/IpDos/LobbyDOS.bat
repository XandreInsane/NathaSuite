@echo off
color b
title Lobby Ip Dos
cls
echo Bienvenue dans Ip Dos, un logiciel pour attaquer un site internet
echo.
echo Entrer Ip site webb ou url :
echo.
echo.
set /p ip=IpWebsite:
echo %ip% >> iplog.txt

echo.
echo Commencer l'attaque ?
echo.
pause

start prog.bat

exit