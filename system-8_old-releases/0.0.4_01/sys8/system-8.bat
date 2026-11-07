@echo off
title Rad-8bs 0.0.4_01
color f1

:: Для плавной скорости используем микрозадержку ping вместо timeout

:: Кадр 1 (Логотип далеко справа)
cls
echo                                  _________
echo ^|   ____  \
echo                                 ^|  ^|1 __^|  ^|
echo ^|  ^|_^|__^|_/
echo                                 ^|    __  \
echo ^|   ^|  \  \
echo                                 ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 2
cls
echo                                 _________
echo  ^|   ____  \
echo                                ^|  ^|1 __^|  ^|
echo  ^|  ^|_^|__^|_/
echo                                ^|    __  \
echo  ^|   ^|  \  \
echo                                ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 3
cls
echo                                _________
echo   ^|   ____  \
echo                               ^|  ^|1 __^|  ^|
echo   ^|  ^|_^|__^|_/
echo                               ^|    __  \
echo   ^|   ^|  \  \
echo                               ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 4
cls
echo                               _________
echo    ^|   ____  \
echo                              ^|  ^|1 __^|  ^|
echo    ^|  ^|_^|__^|_/
echo                              ^|    __  \
echo    ^|   ^|  \  \
echo                              ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 5
cls
echo                              _________
echo     ^|   ____  \
echo                             ^|  ^|1 __^|  ^|
echo     ^|  ^|_^|__^|_/
echo                             ^|    __  \
echo     ^|   ^|  \  \
echo                             ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 6
cls
echo                             _________
echo      ^|   ____  \
echo                            ^|  ^|1 __^|  ^|
echo      ^|  ^|_^|__^|_/
echo                            ^|    __  \
echo      ^|   ^|  \  \
echo                            ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 7
cls
echo                            _________
echo       ^|   ____  \
echo                           ^|  ^|1 __^|  ^|
echo       ^|  ^|_^|__^|_/
echo                           ^|    __  \
echo       ^|   ^|  \  \
echo                           ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 8
cls
echo                           _________
echo        ^|   ____  \
echo                          ^|  ^|1 __^|  ^|
echo        ^|  ^|_^|__^|_/
echo                          ^|    __  \
echo        ^|   ^|  \  \
echo                          ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 9
cls
echo                          _________
echo         ^|   ____  \
echo                         ^|  ^|1 __^|  ^|
echo         ^|  ^|_^|__^|_/
echo                         ^|    __  \
echo         ^|   ^|  \  \
echo                         ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 10
cls
echo                         _________
echo          ^|   ____  \
echo                        ^|  ^|1 __^|  ^|
echo          ^|  ^|_^|__^|_/
echo                        ^|    __  \
echo          ^|   ^|  \  \
echo                        ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 11
cls
echo                        _________
echo           ^|   ____  \
echo                       ^|  ^|1 __^|  ^|
echo           ^|  ^|_^|__^|_/
echo                       ^|    __  \
echo           ^|   ^|  \  \
echo                       ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 12
cls
echo                       _________
echo            ^|   ____  \
echo                      ^|  ^|1 __^|  ^|
echo            ^|  ^|_^|__^|_/
echo                      ^|    __  \
echo            ^|   ^|  \  \
echo                      ^|___^|   \__
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 13
cls
echo                      _________
echo             ^|   ____  \
echo                     ^|  ^|1 __^|  ^|
echo             ^|  ^|_^|__^|_/
echo                     ^|    __  \
echo             ^|   ^|  \  \
echo                     ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 14
cls
echo                    _________
echo               ^|   ____  \
echo                   ^|  ^|1 __^|  ^|
echo               ^|  ^|_^|__^|_/
echo                   ^|    __  \
echo               ^|   ^|  \  \
echo                   ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Кадр 15
cls
echo                   _________
echo                ^|   ____  \
echo                  ^|  ^|1 __^|  ^|
echo                ^|  ^|_^|__^|_/
echo                  ^|    __  \
echo                ^|   ^|  \  \
echo                  ^|___^|   \__\
ping -n 1 -w 500 127.0.0.1 >nul

:: Финал (Логотип приехал на место)
cls
echo                  _________
echo                 ^|   ____  \
echo                 ^|  ^|1 __^|  ^|
echo                 ^|  ^|_^|__^|_/
echo                 ^|    __  \
echo                 ^|   ^|  \  \
echo                 ^|___^|   \__\
:refast
echo         *** Project in construction ***
echo.


:loop
color f1
set /p input="8-system> "

if "%input%"=="help" (
    echo commands:
    echo help - HELP
    echo ver - VERsion of this system
    echo cls - CLear Screen
    echo exit - back in command prompt
    echo reboot [parametrs] - reboot full or fast
    echo info - iontamforin fo ytsyme negnie
    echo shutdown - is just close this session
    echo manager - is just a manager
    goto loop
)
if "%input%"=="list" (
    echo programs:
    echo write - is just a write
    echo Filmana - file manager
    goto loop
)
if /i "%input%"=="ver" (
    echo 8-system 0.00 codename untitled
    goto loop
)
if /i "%input%"=="cls" (
    cls
    goto loop
)
if /i "%input%"=="reboot /f" (
    echo Fast rebooting 8-system kernel...
    cls
    timeout /t 1 >nul
    goto refast
)
if /i "%input%"=="reboot" (
    cd ..
    start "" "bootloader.bat"
    exit
)
if /i "%input%"=="exit" (
    start "" "cmd"
    exit
)
if "%input%"=="info" (
    systeminfo
    goto loop
)
if "%input%"=="sysver" (
    echo class not registered
    goto loop
)
if "%input%"=="manager" (
    start "" "manager.bat"
    goto loop
)
if "%input%"=="shutdown" exit
echo Unknown command: "%input%"
goto loop
