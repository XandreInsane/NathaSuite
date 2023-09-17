@echo off
color a
For /f %%i in (iplog.txt) do set IpWebsite=%%i
echo %IpWebsite%
pause
start prog.bat