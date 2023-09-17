@echo off
for /f "tokens=2 delims=," %%a in ('net wiew ^| findstr /C:"\\"') do echo %%a
pause