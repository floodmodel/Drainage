@echo off

call "C:\Program Files\QGIS 3.28.9\bin\o4w_env.bat"

@echo on
pb_tool
rem Check the error level after running pb_tool
if %errorlevel% neq 0 (
    echo pb_tool not found. Installing...
    python -m pip install pb_tool
    rem Check the error level after installing pb_tool
    if %errorlevel% neq 0 (
        echo Error installing pb_tool. Exiting...
        pause
        exit /b %errorlevel%
    )
)

pb_tool deploy
pause