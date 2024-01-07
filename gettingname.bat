@echo off

REM Get the hostname
for /f %%A in ('hostname') do set "HOSTNAME=%%A"

REM Save hostname to a file
echo %HOSTNAME% > gamefile.txt

REM Rename the file to .k77
ren gamefile.txt gamefile.k77

REM Hide the .k77 file
attrib +h gamefile.k77

REM Delete this batch script
del "%~f0"
