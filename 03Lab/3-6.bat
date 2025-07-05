@echo off
cls
set max=50
:input
set /p n=enter number (max %max%):
for /f "delims=0123456789" %%a in ("%n%") do (
    echo error, it is not number
    goto input
)
if %n% gtr %max% (
    echo error, number > %max%
    goto input
)
set /a fact=1
for /l %%i in (1,1,%n%) do (
    set /a fact=fact*%%i
)
for /l %%i in (1,1,%n%) do (
    set /a fact=fact*%%i
)
echo fact of %n%: %fact%
pause