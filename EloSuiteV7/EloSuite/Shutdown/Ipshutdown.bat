@echo off
color b
title IPshutdown
echo. Pc Admin Network ONLY
set /p adresseIP=Enter IP adress or name of the pc : 

shutdown /s /m \\%adresseIP% /f

pause
exit