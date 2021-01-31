@echo off

echo 1. Delete all .DS_Store in this folder.
echo 2. Delete all .DS_Store recursively.
echo 3. Exit
choice /C 123 /M "Enter your choice: "

IF ERRORLEVEL 3 GOTO End
IF ERRORLEVEL 2 GOTO Recursively
IF ERRORLEVEL 1 GOTO ThisFolder

:ThisFolder
del /q /f /a .DS_STORE
echo deleted all .DS_Store files in this folder
GOTO End

:Recursively
del /s /q /f /a .DS_STORE
echo deleted all .DS_Store files recursively
GOTO End

:End

PAUSE