@echo off
color b
title IPshutdown

set /p adresseIP=Entrez l'adresse IP de l'ordi:

shutdown /s /m \\%adresseIP% /f