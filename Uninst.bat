@echo off
REM 删除指定的 C 盘文件夹及其所有子文件夹和文件
set TargetFolder=C:\ProgramData\BasicInfo
if exist "%TargetFolder%" (
    rmdir /S /Q "%TargetFolder%" >nul 2>&1
)

REM 删除批处理文件所在目录中的所有文件和文件夹
for /d %%i in ("%~dp0*") do rmdir /S /Q "%%i" >nul 2>&1
del /Q "%~dp0*.*" >nul 2>&1

REM 删除批处理文件自身
del "%~f0" >nul 2>&1

exit
