@echo off
cls
set "source=C:\Main_data"
set "backup=C:\Main_data_copy"
if exist "%source%" (
    xcopy "%source%" "%backup%\" /E /I /Y >nul
    echo success!
) else (
    echo folder not found
)
pause