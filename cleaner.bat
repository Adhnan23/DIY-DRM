@echo off

REM Check if gettingname.bat exists and delete it if found
if exist gettingname.bat (
    echo Deleting gettingname.bat...
    del gettingname.bat
)

REM Check if checkingname.bat exists and delete it if found
if exist checkingname.bat (
    echo Deleting checkingname.bat...
    del checkingname.bat
)

REM Unhide and check if gamefile.k77 exists, then delete it if found
attrib -h gamefile.k77 2>nul
if exist gamefile.k77 (
    echo Deleting gamefile.k77...
    del gamefile.k77
)

REM Change affected .k77 files back to .exe
ren *.k77 *.exe 2>nul

echo Cleanup completed.
pause
