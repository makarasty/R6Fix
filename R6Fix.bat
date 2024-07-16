@echo off

PowerShell -Command "$Process = Get-Process RainbowSix -ErrorAction SilentlyContinue; if ($Process) {$Process.ProcessorAffinity = 0x0001; Start-Sleep -Milliseconds 500; $allCoresAffinity = [int][math]::Pow(2, [Environment]::ProcessorCount) - 1; $Process.ProcessorAffinity = $allCoresAffinity; exit 0} else {exit 1}" > nul

if %ERRORLEVEL% equ 0 (
	echo All done, the script will close in 3 seconds, good luck!
	timeout /t 3 /nobreak > nul
) else (
	echo First you need to run Rainbow Six Siege!
	echo.
	echo If Rainbow Six Siege is already running, run this as an administrator!
	pause > nul
)

@REM all this coded by MaKarastY