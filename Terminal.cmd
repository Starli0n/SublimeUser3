@echo off

rem %1 Directory to open
rem %2 Title of the tab
rem %3 Extra commands

set ConEmuExe=ConEmu64.exe

rem Set Tab title
if "%~2"=="" (
	set TAB_TITLE="Cmder"
) else (
	set TAB_TITLE="%~2"
)

rem Set extra commands
if "%~3"=="" (
	set EXTRA_CMD=rem
) else (
	set EXTRA_CMD=%~3
)

rem Check if Cmder is already launched
tasklist /FI "IMAGENAME eq %ConEmuExe%" 2>NUL | C:\Windows\System32\find.exe /I /N "%ConEmuExe%">NUL
if "%ERRORLEVEL%"=="0" goto NEW_TAB

:OPEN_CMDER
%CMDER_ROOT%\Cmder.exe /SINGLE %~1
goto :EOF

:NEW_TAB
start %CMDER_ROOT%\vendor\conemu-maximus5\%ConEmuExe% /title Cmder /cmd cmd /k "%CMDER_ROOT%\vendor\init.bat && cd /d %~1 && cmd /c RenameTab %TAB_TITLE% && %EXTRA_CMD%"
