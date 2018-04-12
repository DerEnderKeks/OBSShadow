@echo off

SET DIR=%~dp0
SET DIR=%DIR:~0,-1%

SET TARGET=%appdata%\obs-studio

robocopy /njh /njs /ndl /nc /ns /s %DIR%\profiles %TARGET%\basic\profiles
robocopy /njh /njs /ndl /nc /ns /s %DIR%\scenes %TARGET%\basic\scenes

robocopy /njh /njs /ndl /nc /ns %DIR%\scripts %TARGET%\scripts

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /f /v OBSShadow /d "powershell -ExecutionPolicy Bypass \"%TARGET%\scripts\obsshadow.ps1\""
