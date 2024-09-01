del /s /Q c:\ProgramData\BasicInfo
cd C:\ProgramData\BasicInfo
rd /s /q c:\ProgramData\BasicInfo
rmdir /S /Q "c:\ProgramData\BasicInfo"
@echo off
cd /d "%~dp0"
del /f /s /q *
cd ..
rd /s /q "%~dp0"
rmdir /S /Q "..\Vacko 2"
del "%~f0"
