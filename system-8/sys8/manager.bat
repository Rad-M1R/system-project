@echo off
title Basic manager of system
color 12

:interface
cls
echo.  
echo    FILmana   
echo    write     
echo    exit      
echo    shutdown  
echo    command prompt
echo.
set /p app_choice="Select App [1-4]: "

if /i "%app_choice%"=="filmana" (
    start "" "filmana.exe"
    goto interface
)
if /i "%app_choice%"=="write" (
    echo write not found
    pause
    goto interface
)
if /i "%app_choice%"=="exit" (
    start "" "system-8.exe"
    exit
)
if /i "%app_choice%"=="shutdown" exit
if /i "%app_choice%"=="command prompt" (
    start "" "system-8.exe"
    goto interface
)

echo Invalid choice!
timeout /t 1 >nul
goto interface
