@echo off

SET DIR=%~dp0
SET DIR=%DIR:~0,-1%

SET TARGET=%appdata%\obs-studio\basic

robocopy /njh /njs /ndl /nc /ns /s %DIR%\profiles %TARGET%\profiles
robocopy /njh /njs /ndl /nc /ns /s %DIR%\scenes %TARGET%\scenes

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /f /v OBSShadow /d "\"C:\Program Files (x86)\obs-studio\bin\64bit\obs64.exe\" --collection Shadow --profile Shadow --scene ShadowDefault --minimize-to-tray --startreplaybuffer"
