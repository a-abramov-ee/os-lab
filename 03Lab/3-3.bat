@echo off
cls
setlocal enabledelayedexpansion
set /a k=0
for /d /r %%f in (*) do (
    set /a k+=1
)
echo !k!
pause