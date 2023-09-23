@echo off
title attack in run
color a
For /f %%i in (ipwifi.txt) do set Ip=%%i
echo %Ip%
ping %Ip% -t -l 20000
