@echo off
echo Setting up Python environment...

:: Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    echo Python is not installed! Please install Python first.
    pause
    exit /b 1
)

:: Check if virtualenv exists, create if not
if exist "venv" (
    echo Removing old virtual environment...
    rmdir /s /q venv
)

echo Creating virtual environment...
python -m venv venv

:: Activate virtual environment
call venv\Scripts\activate.bat

:: Upgrade pip
python -m pip install --upgrade pip

:: Install requirements with dependency resolution
echo Installing dependencies...
pip install matplotlib numpy python-dateutil six --upgrade

echo Setup completed successfully!
