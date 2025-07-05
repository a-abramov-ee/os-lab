@echo off
:begloop
set /p number=enter number
if %number% ==- goto exitloop
if not defined min set min=%number%
if not defined max set max=%number%
if %number% leq %min% set min=%number%
if %number% geq %max% set max=%number%
goto begloop
:exitloop
echo min= %min%
echo max= %max%
pause