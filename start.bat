@echo off
title SecuraLocal AI Setup and Launcher
color 0A

echo ===================================================
echo      SecuraLocal AI - Auto-Setup ^& Launcher
echo ===================================================
echo.

echo [*] Checking Python installation...
python --version
IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] ERROR: Python is not installed, or it is not added to your system PATH.
    echo [!] Please install Python 3.11 manually from python.org and check the box that says "Add Python to PATH" during installation.
    echo.
    pause
    exit /b
)

echo.
echo [*] Python detected. Installing required libraries...
python -m pip install fastapi uvicorn jinja2 pydantic onnxruntime-qnn numpy

echo.
echo [*] Libraries installed! Starting the application...

echo [*] The dashboard will open automatically in 3 seconds. Please wait...

:: This opens the browser in the background after a 3-second delay
start cmd /c "timeout /t 5 /nobreak >nul & start http://127.0.0.1:5000"

:: This starts the server (it keeps the main window open)
python main.py

echo.
echo [!] The server has stopped or crashed. Check the error message above.
pause