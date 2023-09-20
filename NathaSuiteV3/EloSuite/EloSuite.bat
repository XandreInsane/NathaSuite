@echo off
title EloSuite
cls
color b

echo Welcome on EloSuite
echo.
echo.
echo Press a key on the keyboard to start menu
echo.
echo.
pause

:menu
echo.
echo Choose an option :
echo.
echo [1] Ip/Url Dos  [2] Keylog Fake prog  [3] Ip Shutdown
echo [4] Scan Wifi   [5] Graber Password wifi
echo [6] Hach base64 (down) [7] Wifi Dos [8] Exit
echo.

set /p choix=Entree :

if "%choix%"=="1" (
cd IpDos
start LobbyDOS.bat
cd..
goto menu
)
if "%choix%"=="2" (
cd social-key
start LanchKeylog.bat
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
if "%choix%"=="6" (
cd ConvertB64
start bases64
cd..
goto menu
)
if "%choix%"=="7" (
cd Wifidos 
start wifidos.bat
cd..
goto menu
)


if "%choix%"=="8 (exit)



