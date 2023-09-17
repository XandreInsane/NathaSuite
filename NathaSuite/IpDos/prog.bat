@echo off
title attaque en cours
color a
For /f %%i in (iplog.txt) do set IpWebsite=%%i
echo %IpWebsite%
ping %IpWebsite% -t -l 10
