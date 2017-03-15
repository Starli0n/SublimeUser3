@echo off

set ConEmuExe=ConEmu64.exe

rem Check if Cmder is already launched
tasklist /FI "IMAGENAME eq %ConEmuExe%" 2>NUL | C:\Windows\System32\find.exe /I /N "%ConEmuExe%">NUL
if "%ERRORLEVEL%"=="0" goto NEW_TAB

:OPEN_CMDER
%CMDER_ROOT%\Cmder.exe /SINGLE %~1
goto :EOF

:NEW_TAB
start %CMDER_ROOT%\vendor\conemu-maximus5\%ConEmuExe% /title Cmder /cmd cmd /k "%CMDER_ROOT%\vendor\init.bat && cd /d %~1"
