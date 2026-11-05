@echo off
setlocal
title Instalar Cuadrilla IA
echo.
echo  =======================================
echo   Cuadrilla IA - Instalacion
echo  =======================================
echo.

where claude >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Falta Claude Code. Instalalo e inicia sesion con: claude
  goto :fin
)
where git >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Falta Git. Instalalo con: winget install --id Git.Git -e
  goto :fin
)

echo [1/4] Instalando Cuadrilla en Claude Code...
call claude plugin marketplace add "%~dp0."
if errorlevel 1 goto :fallo
call claude plugin marketplace update cuadrilla
if errorlevel 1 goto :fallo
call claude plugin install cuadrilla@cuadrilla
if errorlevel 1 goto :fallo
call claude plugin update cuadrilla@cuadrilla

echo.
echo [2/4] Agregando plugins oficiales de Claude...
call claude plugin marketplace add anthropics/claude-plugins-official
call claude plugin marketplace add anthropics/knowledge-work-plugins
for %%P in (frontend-design security-guidance code-review pr-review-toolkit feature-dev code-simplifier claude-md-management claude-code-setup skill-creator) do (
  call claude plugin install %%P@claude-plugins-official
  if errorlevel 1 echo [AVISO] No se pudo instalar %%P.
)
for %%P in (design marketing engineering product-management data productivity) do (
  call claude plugin install %%P@knowledge-work-plugins
  if errorlevel 1 echo [AVISO] No se pudo instalar %%P.
)

echo.
echo [3/4] Instalando el equipo de Gemini...
where agy >nul 2>nul
if errorlevel 1 (
  echo [AVISO] Falta Antigravity CLI. El equipo Gemini quedara pendiente.
  goto :resumen
)
if exist "%~dp0gemini\skills" rmdir /s /q "%~dp0gemini\skills"
xcopy "%~dp0skills" "%~dp0gemini\skills\" /E /I /Q /Y >nul
call agy plugin uninstall cuadrilla >nul 2>nul
call agy plugin install "%~dp0gemini"
if errorlevel 1 echo [AVISO] No se pudo instalar Cuadrilla en Antigravity.

:resumen
echo.
echo [4/4] Comprobando...
call "%~dp0verificar.cmd" nopause
echo.
echo [OK] Reinicia Claude Code y escribe /cuadrilla.
goto :fin

:fallo
echo.
echo [ERROR] Fallo la instalacion. Copia el mensaje de arriba.

:fin
echo.
pause
