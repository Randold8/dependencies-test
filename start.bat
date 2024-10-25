@echo off
echo Starting project setup and execution...

:: Run setup first
call setup.bat
if errorlevel 1 (
    echo Setup failed, cannot continue.
    pause
    exit /b 1
)

:: If setup was successful, run the Python script
echo.
echo Setup successful! Running the program...
echo.
python main.py

pause

