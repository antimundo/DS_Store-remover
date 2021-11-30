@echo off

echo 1. Delete all .DS_Store in this folder.
echo 2. Delete all .DS_Store recursively.
echo 3. Exit
choice /C 123 /M "Enter your choice "
GOTO LABEL-%ERRORLEVEL%

:LABEL-1 ThisFolder
PAUSE
del /q /f /a .DS_STORE
echo deleted all .DS_Store files in this folder 
GOTO LABEL-3

:LABEL-2 Recursively
PAUSE
del /s /q /f /a .DS_STORE
echo deleted all .DS_Store files recursively 
GOTO LABEL-3

:LABEL-3 End
PAUSE