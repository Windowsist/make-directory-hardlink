@echo off
if "%1"=="" (echo invalid parameters, usage:
echo %0 source destination
exit /b 1)
if "%2"=="" (echo invalid parameters, usage:
echo %0 source destination
exit /b 1)
if not "%3"=="" (echo invalid parameters, usage:
echo %0 source destination
exit /b 1)
set src=%~f1
set dst=%~f2
if not exist "%src%" (echo source is not exist
exit /b 1)
xcopy /t /h /i /e  /b "%src%" "%dst%">nul
if errorlevel 1 pause
setlocal enabledelayedexpansion
for /f  "delims=" %%i in ('dir /a:-d /b /s "%src%"') do (set dirnoname=%%~dpi
mklink /h "\\?\!dirnoname:%src%=%dst%!%%~nxi" "\\?\%%i">nul
if errorlevel 1 (echo  create hardlink "\\?\!dirnoname:%src%=%dst%!%%~nxi" to "\\?\%%i" error
pause))