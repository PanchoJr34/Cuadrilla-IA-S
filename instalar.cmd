@echo off
setlocal
title Instalar Cuadrilla
echo.
echo === Instalando Cuadrilla para Claude Code ===
echo.
where claude >nul 2>nul
if errorlevel 1 (
  echo [ERROR] No encontre "claude". Instala Claude Code y abre una terminal nueva.
  goto :fin
)
where git >nul 2>nul
if errorlevel 1 echo [AVISO] No encontre Git. Lo necesitas para que los agentes editen en copias aisladas.
where agy >nul 2>nul
if errorlevel 1 echo [AVISO] No encontre "agy". Instala Antigravity CLI para delegar a Gemini.

call claude plugin marketplace add "%~dp0."
if errorlevel 1 goto :fallo
call claude plugin marketplace update cuadrilla
if errorlevel 1 goto :fallo
call claude plugin install cuadrilla@cuadrilla
if errorlevel 1 goto :fallo
call claude plugin update cuadrilla@cuadrilla
if errorlevel 1 goto :fallo
echo.
call claude plugin list
echo.
echo [OK] Listo. Reinicia Claude Code y escribe /cuadrilla.
goto :fin

:fallo
echo.
echo [ERROR] Fallo la instalacion. Copia el mensaje de arriba.

:fin
echo.
pause
