@echo off
color b
title Tracert Website

echo Enter a website to start tracert server
echo.
set /p site=Webiste : 
echo.
pause
echo.
tracert %site%

echo.
pause
exit