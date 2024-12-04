@echo off
REM Gestion intelligente du repertoire
if "%1"=="" set "DIR=%CD%"
if "%1"=="." set "DIR=%CD%"
if not "%1"=="" if not "%1"=="." set "DIR=%1"

REM Verification de l'existence du repertoire
if not exist "%DIR%" (
    echo Le repertoire "%DIR%" n'existe pas.
    exit /b 1
)

REM Verification de Visual Studio Code
where code >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo Visual Studio Code n'est pas installe. Veuillez l'installer.
    exit /b 1
)

REM Compteur de projets ouverts
set /a OPENED_PROJECTS=0

REM Parcours de chaque sous-dossier et lancement de VSCode
for /d %%D in ("%DIR%\*") do (
    REM Verification de la presence du dossier .git
    if exist "%%D\.git" (
        start "" code "%%D"
        set /a OPENED_PROJECTS+=1
    )
)

REM Message final personnalise
if %OPENED_PROJECTS% GTR 0 (
    echo Vos projets ont correctement ete lances avec VSCode.
) else (
    echo Aucun projet n'a ete trouve dans "%DIR%".
)
