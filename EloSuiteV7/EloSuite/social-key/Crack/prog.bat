@echo off

color b

cd ..
cd LogUser
For /f %%i in (LogTitleUser.txt) do set Title=%%i
title %Title%
cd ..
cd Crack
echo. 
echo Programme %Title% is run
echo. 
echo Enter informations
echo.
cd ..
cd LogUser
For /f %%i in (LogTrap1User.txt) do set Trap1=%%i
echo Enter %Trap1%
echo.
set /p fakeresult1=%Trap1% :
echo %FakeResult1%=%fakeresult1% >> FakeResultVi.txt
cd ..
cd Crack

cd ..
cd LogUser
For /f %%i in (LogTrap2User.txt) do set Trap2=%%i
echo.
echo Enter %Trap2%
echo.
set /p fakeresult2=%Trap2% :
echo Fakeresult = %FakeResult2%=%fakeresult2% >> FakeResultVi.txt
cd ..
cd Crack

pause
exit