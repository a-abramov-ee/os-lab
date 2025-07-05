@echo off
cls
setlocal enabledelayedexpansion
set "targetDir=%~dp0"
for %%F in ("%targetDir%\*") do (
    for /f "tokens=1-3 delims=." %%a in ("%%~tF") do (
        set "month=%%b"
    )
    set /a m=1!month!-100

    if !m! GEQ 1 if !m! LEQ 6 (
        echo %%~nxF
    )
)
pause
endlocal