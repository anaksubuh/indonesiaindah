@echo off
REM Ambil tanggal dan waktu sekarang
for /f "tokens=1-6 delims=/:., " %%a in ("%date% %time%") do (
    set YYYY=%%c
    set MM=%%a
    set DD=%%b
    set HH=%%d
    set Min=%%e
    set Sec=%%f
)

REM Format pesan commit jadi: UP YYYY-MM-DD HH:MM:SS
set COMMIT_MSG=UP %YYYY%-%MM%-%DD% %HH%:%Min%:%Sec%

echo # indonesiaindah.io > README.md
git init
git add .
git commit -m "%COMMIT_MSG%"
git branch -M main
git remote add origin https://github.com/anaksubuh/indonesiaindah.io.git
git push -u origin main --force
