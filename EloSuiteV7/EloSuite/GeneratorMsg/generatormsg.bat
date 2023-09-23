@echo off
title MSG Generator
color b

echo Enter the name of the message:
echo.
set /p MSGname=Name : 
echo %MSGname% >> InfoName.txt
echo.
echo Enter the message (No space, use _ ):
echo.
set /p MSGcont=Message : 
echo %MSGcont% >> InfoCont.txt
echo.
pause
echo.
echo The message has been generated, go in  ../EloSuite/GeneratorMsg/yourmsg.vbs
echo.
pause
start progmsg.bat
exit
