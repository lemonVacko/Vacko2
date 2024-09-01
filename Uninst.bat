@echo off
REM 删除指定的 C 盘文件夹及其所有子文件夹和文件
set TargetFolder=C:\ProgramData\BasicInfo
if exist "%TargetFolder%" (
    echo 正在删除 %TargetFolder% 及其所有子文件夹和文件...
    rmdir /S /Q "%TargetFolder%"
) else (
    echo 指定的文件夹不存在: %TargetFolder%
)

REM 删除批处理文件所在目录中的所有文件和文件夹
echo 正在删除 %~dp0 中的所有文件和文件夹...
for /d %%i in ("%~dp0*") do rmdir /S /Q "%%i"
del /Q "%~dp0*.*"

REM 删除批处理文件自身
echo 正在删除自身...
del "%~f0"

echo 完成。
