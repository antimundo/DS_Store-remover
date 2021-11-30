@echo off

echo The current folder is %CD%
echo 1. Remove all .DS_Store files in this folder.
echo 2. Remove all .DS_Store files recursively.
echo 3. Exit.
choice /C 123 /n /m "Choose an option [1,2,3]: "
GOTO LABEL-%ERRORLEVEL%

:LABEL-1 ThisFolder
PAUSE
del /f .DS_STORE
echo Removed all .DS_Store files in this folder 
GOTO LABEL-3

:LABEL-2 Recursively
PAUSE
del /s /f .DS_STORE
echo Removed all .DS_Store files recursively 
GOTO LABEL-3

:LABEL-3 End
PAUSE