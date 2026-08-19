@echo off
title FilMAna
color 13

:fm_start
cls
echo               FilMAna - file manager of Rad-8bs      

:fm_loop
set "fm_in="
set /p fm_in="%cd%> "

for /f "tokens=1,*" %%a in ("%fm_in%") do (
    set "cmd_name=%%a"
    set "cmd_arg=%%b"
)
if /i "%cmd_name%"=="exit" (
    start "" "manager.exe"
    exit
)
if /i "%cmd_name%"=="shutdown" exit

if /i "%cmd_name%"=="help" (
    echo  Commands: 
    echo  cd [dir]   - change directory  ^| type [file] - view file
    echo  make [file]- create text file  ^| del [file]  - delete file
    echo  mkdir [dir]- create directory  ^| rmdir [dir] - remove folder
    echo  tree       - show folder tree  ^| shutdown
    echo  exit       - back to manager
    echo.
    goto loop
)

if /i "%cmd_name%"=="dir" (
    echo.
    for /f "skip=3 delims=" %%i in ('dir') do (
        echo %%i
    )
    echo.
    goto fm_loop
)

if /i "%cmd_name%"=="cd" (
    if "%cmd_arg%"=="" (
        echo Error: Specify directory path.
    ) else (
        cd %cmd_arg% 2>nul || echo Directory not found!
    )
    goto fm_start
)

if /i "%cmd_name%"=="mkdir" (
    if "%cmd_arg%"=="" (
        echo Error: Specify folder name.
    ) else (
        mkdir "%cmd_arg%" 2>nul && echo Folder created. || echo Error creating folder!
    )
    goto fm_loop
)

:: Новая команда: rmdir
if /i "%cmd_name%"=="rmdir" (
    if "%cmd_arg%"=="" (
        echo Error: Specify folder name.
    ) else (
        if exist "%cmd_arg%" (
            :: /s /q удаляет папку со всеми файлами внутри без лишних вопросов
            rmdir /s /q "%cmd_arg%" 2>nul && (
                echo Folder deleted.
                goto fm_start
            ) || echo Error deleting folder!
        ) else (
            echo Folder not found!
        )
    )
    goto fm_loop
)

if /i "%cmd_name%"=="tree" (
    echo.
    :: /f заставляет tree показывать не только папки, но и файлы
    tree /f "%cmd_arg%" 2>nul || tree 2>nul || echo Error executing tree!
    echo.
    goto fm_loop
)

if /i "%cmd_name%"=="type" (
    if "%cmd_arg%"=="" (
        echo Error: Specify file name.
    ) else (
        if exist "%cmd_arg%" (
            echo.
            echo --- Content of %cmd_arg% ---
            type "%cmd_arg%"
            echo -----------------------------
            echo.
        ) else (
            echo File not found!
        )
    )
    goto fm_loop
)

if /i "%cmd_name%"=="make" (
    if "%cmd_arg%"=="" (
        echo Error: Specify file name.
    ) else (
        echo Enter text (Type 'END' on a new line and press Enter to save):
        setlocal enabledelayedexpansion
        type null > "%cmd_arg%"
        :write_loop
        set "line="
        set /p "line="
        if /i "!line!"=="END" (
            endlocal
            echo File saved.
            goto fm_start
        )
        echo(!line!>> "%cmd_arg%"
        goto write_loop
    )
    goto fm_loop
)

if /i "%cmd_name%"=="del" (
    if "%cmd_arg%"=="" (
        echo Error: Specify file name.
    ) else (
        if exist "%cmd_arg%" (
            del "%cmd_arg%"
            echo File deleted.
            goto fm_start
        ) else (
            echo File not found!
        )
    )
    goto fm_loop
)

echo Unknown FM command: "%cmd_name%"
goto fm_loop

