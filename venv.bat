@echo off
REM --- Venv Activation Script ---
REM This script launches a new command prompt (cmd.exe)
REM and executes the virtual environment activation script,
REM then keeps the new window open (/k flag).

REM Check if the venv folder exists
if not exist ".venv\Scripts\activate.bat" (
    echo Error: Virtual environment not found at .venv\Scripts\activate.bat
    echo Please make sure you have run 'python -m venv .venv'
    pause
    exit /b 1
)

REM Use 'cmd /k' to open a new terminal and execute the command, keeping the window open.
REM The 'call' command is used inside the command string to ensure the script's
REM changes persist in the new shell.
cmd /k "call .venv\Scripts\activate.bat"

REM Note: The 'start' command is not used here because 'cmd /k' achieves the
REM desired result of running a command and keeping the window open.