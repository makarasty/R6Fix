@REM only for four-core processors
@echo off
PowerShell "$Process = Get-Process RainbowSix; $Process.ProcessorAffinity=8" > nul
if %ERRORLEVEL% neq 0 goto Error
timeout /t 1 /nobreak > nul
PowerShell "$Process = Get-Process RainbowSix; $Process.ProcessorAffinity=15" > nul
if %ERRORLEVEL% neq 0 goto Error
echo All done, the script will close in 10 seconds, good luck!
timeout /t 10 /nobreak > nul
exit
:Error
echo First you need to run Rainbow Six Siege
timeout /t -1 /nobreak > nul
@REM all this coded by MaKarastY