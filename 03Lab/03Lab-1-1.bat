@echo off
set /p filepath=enter file-name and directory:
set /a count=0
for /f %%A in (%filepath%) do (
    set /a count+=1
)
echo int_numbers: %count%
pause