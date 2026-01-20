@echo off
REM Change "C:\Users\YourName\anaconda3" to your actual Anaconda/Miniconda installation path
call "C:\Users\YourName\anaconda3\Scripts\activate.bat" "C:\Users\YourName\anaconda3"

REM Activate your specific environment
call conda activate venv

REM Keep the window open and interactive
cmd /k