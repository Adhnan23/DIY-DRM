@echo off

REM Check if gettingname.bat exists, if so, run it
if exist gettingname.bat (
    echo Running gettingname.bat...
    call gettingname.bat
)

REM Read stored hostname from .k77 file
for /f %%A in (gamefile.k77) do set "STORED_HOSTNAME=%%A"

REM Get the current hostname
for /f %%A in ('hostname') do set "CURRENT_HOSTNAME=%%A"

REM Check if the hostnames match
if "%CURRENT_HOSTNAME%"=="%STORED_HOSTNAME%" (
    echo Hostname matches. Starting the game...
    
    REM Replace "gta6.exe" with the original executable name
    ren "gta6.k77" "gta6.exe"
    
    REM Run the executable
    start gta6.exe
    
    REM Revert the filename extension back to .k77
    ren "gta6.exe" "gta6.k77"
) else (
    echo Error: Hostname does not match. Game cannot run.
    pause
)
