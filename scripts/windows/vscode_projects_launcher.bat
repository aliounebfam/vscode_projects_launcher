@echo off
REM Smart directory management
if "%1"=="" set "DIR=%CD%"
if "%1"=="." set "DIR=%CD%"
if not "%1"=="" if not "%1"=="." set "DIR=%1"

REM Check if directory exists
if not exist "%DIR%" (
    echo Directory "%DIR%" does not exist.
    exit /b 1
)

REM Check if 'code' command is available
where code >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Error: 'code' command not found. Make sure Visual Studio Code is installed and added to PATH.
    exit /b 1
)

REM Counter for opened projects
set /a OPENED_PROJECTS=0

REM Loop through each subfolder and launch VSCode
for /d %%D in ("%DIR%\*") do (
    REM Check for .git folder
    if exist "%%D\.git" (
        start "" code "%%D"
        set /a OPENED_PROJECTS+=1
    )
)

REM Custom final message
if %OPENED_PROJECTS% GTR 0 (
    echo Your projects have been successfully opened with VSCode.
) else (
    echo No git projects found in "%DIR%".
)
