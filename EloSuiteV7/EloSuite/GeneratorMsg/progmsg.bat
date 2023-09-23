@echo off
title MSG Generator
color b

For /f %%i in (InfoName.txt) do set MSGname=%%i
del InfoName.txt

For /f %%i in (InfoCont.txt) do set MSGcont=%%i
del InfoCont.txt


echo Msgbox"%MSGcont%",0+1,"%MSGname%" >> %MSGname%.vbs
start %MSGname%.vbs
exit