@echo off
title Basic manager of system
color 12

:interface
cls
echo.  
echo    1. FILmana   
echo    2. write     
echo    3. exit      
echo    4. shutdown  
echo.
set /p app_choice="Select App [1-4]: "

if "%app_choice%"=="1" (
    start "" "filmana.bat"
    goto interface
)
if "%app_choice%"=="2" (
    echo write not found
    pause
    goto interface
)
if "%app_choice%"=="3" (
    start "" "system-8.bat"
    goto interface
)
if "%app_choice%"=="4" exit

echo Invalid choice!
timeout /t 1 >nul
goto interface
