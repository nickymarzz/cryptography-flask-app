@echo off
setlocal
cd /d "%~dp0"

:: Configure UTF-8 encoding so emojis in Flask startup and route logs display properly
chcp 65001 >nul
set PYTHONUTF8=1
set PYTHONIOENCODING=utf-8

echo ============================================================
echo   Cryptography Flask App - Starting Server
echo ============================================================
echo.

:: 1. Check if port 5000 is already in use
set "PORT_IN_USE="
for /f "tokens=5" %%a in ('netstat -ano -p tcp ^| findstr ":5000" ^| findstr "LISTENING"') do (
    set "PORT_IN_USE=%%a"
)

if defined PORT_IN_USE (
    echo [WARNING] Port 5000 is already in use by process PID %PORT_IN_USE%.
    echo The Flask server appears to already be running!
    echo To restart, run stop.bat first.
    echo.
    pause
    exit /b 1
)

:: 2. Check Python / Virtual Environment
set "PYTHON_CMD="
if exist "venv\Scripts\activate.bat" (
    echo [*] Virtual environment found: venv
    set "PYTHON_CMD=venv\Scripts\python.exe"
) else if exist ".venv\Scripts\activate.bat" (
    echo [*] Virtual environment found: .venv
    set "PYTHON_CMD=.venv\Scripts\python.exe"
) else (
    where python >nul 2>&1
    if errorlevel 1 (
        echo [ERROR] Python is not found in your PATH!
        echo Please install Python 3.10+ and add it to your PATH environment variable.
        echo.
        pause
        exit /b 1
    )
    set "PYTHON_CMD=python"
)

:: Check if running in foreground mode
if "%~1"=="--foreground" goto :run_foreground
if "%~1"=="-f" goto :run_foreground

:: 3. Launch Flask server in a dedicated window
echo [*] Launching Flask server in a new window...
start "Cryptography Flask App" cmd /k "chcp 65001 >nul & set PYTHONUTF8=1& set PYTHONIOENCODING=utf-8& title Cryptography Flask App & %PYTHON_CMD% app.py"

echo.
echo ============================================================
echo   Flask server started successfully!
echo   - Local URL:   http://127.0.0.1:5000/
echo   - How to stop: Run stop.bat or close the server window
echo ============================================================
echo.

:: 4. Automatically open default browser unless --no-browser is passed
if not "%~1"=="--no-browser" (
    echo [*] Opening browser to http://127.0.0.1:5000/ ...
    ping 127.0.0.1 -n 3 >nul
    start http://127.0.0.1:5000/
)

ping 127.0.0.1 -n 2 >nul
exit /b 0

:run_foreground
echo [*] Running Flask server in current window (Ctrl+C to stop)...
echo.
%PYTHON_CMD% app.py
