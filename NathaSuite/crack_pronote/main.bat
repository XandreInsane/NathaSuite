@echo off
color b
title Crack_prnt
cls
echo Entrer un note souhaitee et la matiere.
echo.
echo.
set /p user=Note:
set /p pass=Matiere:
echo Note=”%user%” Matiere=”%pass%” >> result.txt
exit
