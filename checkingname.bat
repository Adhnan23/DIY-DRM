@echo off

REM Read stored hostname from .k77 file
for /f %%A in (gamefile.k77) do set "STORED_HOSTNAME=%%A"

REM Get the current hostname
for /f %%A in ('hostname') do set "CURRENT_HOSTNAME=%%A"

REM Check if the hostnames match
if "%CURRENT_HOSTNAME%"=="%STORED_HOSTNAME%" (
    echo Hostname matches. Starting the game...
    start gta6.exe
) else (
    echo Error: Hostname does not match. Game cannot run.
    pause
)
