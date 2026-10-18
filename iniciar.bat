@echo off
rem Abre el Entrenador C1 en Edge (el reconocimiento de voz necesita localhost)
cd /d "%~dp0"
start "Servidor Entrenador C1" /min python -m http.server 8765 --bind 127.0.0.1
timeout /t 2 /nobreak >nul
start "" "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" http://127.0.0.1:8765/index.html
