@echo off
setlocal
cd /d "%~dp0"

echo ============================================================
echo   Cryptography Flask App - Stopping Server
echo ============================================================
echo.

set "STOPPED="

:: 1. Terminate any window with title "Cryptography Flask App"
tasklist /FI "WINDOWTITLE eq Cryptography Flask App*" 2>nul | findstr /i "cmd.exe python.exe" >nul
if not errorlevel 1 (
    echo [*] Terminating Cryptography Flask App window...
    taskkill /FI "WINDOWTITLE eq Cryptography Flask App*" /F /T >nul 2>&1
    set "STOPPED=1"
)

:: 2. Terminate any process listening on port 5000
for /f "tokens=5" %%a in ('netstat -ano -p tcp ^| findstr ":5000" ^| findstr "LISTENING"') do (
    echo [*] Stopping process listening on port 5000 - PID: %%a...
    taskkill /F /T /PID %%a >nul 2>&1
    set "STOPPED=1"
)

:: Wait briefly for OS to release the socket
ping 127.0.0.1 -n 2 >nul

:: Verify if port 5000 is still in use
set "STILL_RUNNING="
for /f "tokens=5" %%a in ('netstat -ano -p tcp ^| findstr ":5000" ^| findstr "LISTENING"') do (
    set "STILL_RUNNING=%%a"
)

if defined STILL_RUNNING (
    echo [*] Force stopping remaining process - PID: %STILL_RUNNING%...
    taskkill /F /PID %STILL_RUNNING% >nul 2>&1
    set "STOPPED=1"
)

if defined STOPPED (
    echo.
    echo ============================================================
    echo   Cryptography Flask App has been stopped successfully.
    echo ============================================================
) else (
    echo.
    echo [INFO] No running server was detected on port 5000.
)

echo.
ping 127.0.0.1 -n 2 >nul
