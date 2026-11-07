@echo off
title BootRAD

:interface
cls
echo select OS
echo     ____________
echo    ^|cmd       ^|
echo    ^|system-8  ^|
echo    ^|secret    ^|
echo    ^|shutdown  ^|
echo    ^|__________^|
set /p OS_choice="OS selected is "

if /i "%OS_choice%"=="cmd" (
    start "" "cmd"
    exit
)
if /i "%OS_choice%"=="system-8" (
    cd sys8
    start "" "system-8.bat"
    exit
)
if /i "%OS_choice%"=="secret" (
    echo DSK/HD2 not found
    pause >nul
    goto interface
)
if /i "%OS_choice%"=="power off" exit
if /i "%OS_choice%"=="5" (
    echo SU locked, SORRY
    pause >nul
    goto interface
)

echo Invalid OS
timeout /t 1 >nul
goto interface
