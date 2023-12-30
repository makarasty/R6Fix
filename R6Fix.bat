@echo off
PowerShell "$Process = Get-Process RainbowSix; $Process.ProcessorAffinity=0x0003" > nul
if %ERRORLEVEL% neq 0 goto Error
PowerShell "$Process = Get-Process RainbowSix; $Process.ProcessorAffinity=0x000F" > nul
if %ERRORLEVEL% neq 0 goto Error
echo All done, the script will close in any seconds, good luck!
timeout /t 3 /nobreak > nul
exit

:Error
echo First you need to run Rainbow Six Siege!
echo.
echo If Rainbow Six Siege is already running, run this as an administrator!
timeout /t -1 /nobreak > nul

@REM all this coded by MaKarastY
