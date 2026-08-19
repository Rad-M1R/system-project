@echo off
title BootRAD

:interface
cls
echo select OS
echo.
echo      system-8
echo      system-86
echo      shutdown  
echo.
set /p boot="start "

if /i "%boot%"=="system-8" (
    cd sys8
    start "" "system-8.exe"
    exit
)
if /i "%boot%"=="system-86" (
    echo DSK/HD2 not found
    pause >nul
    goto interface
)
if /i "%boot%"=="shutdown" exit
if /i "%boot%"=="SU" (
    echo SU locked, SORRY
    pause >nul
    goto interface
)

echo Invalid boot %boot%
timeout /t 1 >nul
goto interface
