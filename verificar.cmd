@echo off
setlocal
echo.
echo --- Claude Code ---
where claude >nul 2>nul && call claude --version || echo [FALTA] Instala Claude Code.
echo --- Git ---
where git >nul 2>nul && git --version || echo [FALTA] Instala Git.
echo --- Antigravity CLI ---
where agy >nul 2>nul && call agy --version || echo [FALTA] Instala Antigravity CLI.
echo --- Plugin en Claude ---
call claude plugin list 2>nul | findstr /i "cuadrilla" || echo [FALTA] Cuadrilla no esta instalada.
echo --- Agentes de Gemini ---
where agy >nul 2>nul && call agy agents 2>nul | findstr /i "gemini-" || echo [REVISAR] No aparecen los agentes de Gemini.
echo --- Sesion de Gemini ---
where agy >nul 2>nul && call agy -p "Responde solo: OK" --output-format json 2>nul | findstr /i "SUCCESS" >nul && echo [OK] Gemini responde. || echo [REVISAR] Corre agy e inicia sesion.
if /i "%~1"=="nopause" exit /b 0
echo.
pause
