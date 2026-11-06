#!/bin/bash
# Verificador de Cuadrilla IA para macOS (equivalente a verificar.cmd).
# Uso: bash verificar.sh

tiene() { command -v "$1" >/dev/null 2>&1; }

echo
echo "--- Claude Code ---"
if tiene claude; then claude --version; else echo "[FALTA] Instala Claude Code."; fi

echo "--- Git ---"
if tiene git; then git --version; else echo "[FALTA] Instala Git."; fi

echo "--- Antigravity CLI ---"
if tiene agy; then agy --version; else echo "[FALTA] Instala Antigravity CLI."; fi

echo "--- Plugin en Claude ---"
claude plugin list 2>/dev/null | grep -i "cuadrilla" || echo "[FALTA] Cuadrilla no esta instalada."

echo "--- Agentes de Gemini ---"
if tiene agy && agy agents 2>/dev/null | grep -i "gemini-"; then :; else
  echo "[REVISAR] No aparecen los agentes de Gemini."
fi

echo "--- Sesion de Gemini ---"
if tiene agy && agy -p "Responde solo: OK" --output-format json 2>/dev/null | grep -qi "SUCCESS"; then
  echo "[OK] Gemini responde."
else
  echo "[REVISAR] Corre agy e inicia sesion."
fi
