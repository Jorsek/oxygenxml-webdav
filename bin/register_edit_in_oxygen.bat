@echo off
:: register Edit in Oxygen registry handler entries
:: run by passing in the following parameters,
::   1. type: one of "editor" or "author"
::   2. version number: ex: 27.0
:: execution example: reg.bat editor 26.1

if "%~1"=="" (
  echo Please provide your Oxygen XML type ^(author or editor^) and a version number ^(e.g., 27.1^).
  exit /b
)

if "%~2"=="" (
  echo Please provide a version number ^(e.g., 27.1^).
  exit /b
)

set "type=%~1"
set "version=%~2"

for /f "tokens=1,2 delims=." %%a in ("%version%") do (
  set "major=%%a"
  set "minor=%%b"
)

if /i "%type%"=="author" (
  set "exePath=C:\Program Files\Oxygen XML Author %major%\oxygenAuthor%major%.%minor%.exe"
  set "iconPath=C:\Program Files\Oxygen XML Author %major%\oxygenAuthor%major%.%minor%.exe"
) else if /i "%type%"=="editor" (
  set "exePath=C:\Program Files\Oxygen XML Editor %major%\oxygen%major%.%minor%.exe"
  set "iconPath=C:\Program Files\Oxygen XML Editor %major%\oxygen%major%.%minor%.exe"
) else (
    echo Installed Oxygen XML type of "%type%" %1 %2 %0 is invalid. Please use "author" or "editor".
    exit /b
)

echo Updating edit-in-oxygen registry entries for Oxygen XML "%type%", version %major%.%minor%...

reg add "HKEY_CLASSES_ROOT\edit-in-oxygen" /v "" /t REG_SZ /d "URL:edit-in-oxygen Protocol" /f
reg add "HKEY_CLASSES_ROOT\edit-in-oxygen" /v "URL Protocol" /t REG_SZ /d "" /f
reg add "HKEY_CLASSES_ROOT\edit-in-oxygen\DefaultIcon" /v "" /t REG_SZ /d "%iconPath%,0" /f
reg add "HKEY_CLASSES_ROOT\edit-in-oxygen\shell" /v "" /t REG_SZ /d "" /f
reg add "HKEY_CLASSES_ROOT\edit-in-oxygen\shell\open" /v "" /t REG_SZ /d "" /f
reg add "HKEY_CLASSES_ROOT\edit-in-oxygen\shell\open\command" /v "" /t REG_SZ /d "\"%exePath%\" \"%%1\"" /f

echo Registry updated successfully!



