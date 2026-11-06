#!/bin/bash
# Instalador de Cuadrilla IA para macOS (equivalente a instalar.cmd).
# Uso: bash instalar.sh

DIR="$(cd "$(dirname "$0")" && pwd)"

echo
echo " ======================================="
echo "  Cuadrilla IA - Instalacion (macOS)"
echo " ======================================="
echo

if ! command -v claude >/dev/null 2>&1; then
  echo "[ERROR] Falta Claude Code. Instalalo con: curl -fsSL https://claude.ai/install.sh | bash"
  echo "        Luego inicia sesion con: claude"
  exit 1
fi
if ! command -v git >/dev/null 2>&1; then
  echo "[ERROR] Falta Git. Instalalo con: xcode-select --install"
  exit 1
fi

fallo() {
  echo
  echo "[ERROR] Fallo la instalacion. Copia el mensaje de arriba."
  exit 1
}

echo "[1/4] Instalando Cuadrilla en Claude Code..."
claude plugin marketplace add "$DIR" || fallo
claude plugin marketplace update cuadrilla || fallo
claude plugin install cuadrilla@cuadrilla || fallo
claude plugin update cuadrilla@cuadrilla

echo
echo "[2/4] Plugins oficiales de Claude"
echo "Se agregaran 15 plugins de Anthropic. Consumen algo de contexto y algunos usan hooks."
read -r -p "Instalarlos? [S/N] " respuesta
case "$respuesta" in
  [Ss]*)
    claude plugin marketplace add anthropics/claude-plugins-official
    claude plugin marketplace add anthropics/knowledge-work-plugins
    for p in frontend-design security-guidance code-review pr-review-toolkit feature-dev code-simplifier claude-md-management claude-code-setup skill-creator; do
      claude plugin install "$p@claude-plugins-official" || echo "[AVISO] No se pudo instalar $p."
    done
    for p in design marketing engineering product-management data productivity; do
      claude plugin install "$p@knowledge-work-plugins" || echo "[AVISO] No se pudo instalar $p."
    done
    ;;
esac

echo
echo "[3/4] Instalando el equipo de Gemini..."
if ! command -v agy >/dev/null 2>&1; then
  echo "[AVISO] Falta Antigravity CLI. El equipo Gemini quedara pendiente."
else
  rm -rf "$DIR/gemini/skills"
  mkdir -p "$DIR/gemini/skills" "$DIR/gemini/references"
  cp -R "$DIR/skills/." "$DIR/gemini/skills/"
  cp -R "$DIR/references/." "$DIR/gemini/references/"
  agy plugin uninstall cuadrilla >/dev/null 2>&1
  agy plugin install "$DIR/gemini" || echo "[AVISO] No se pudo instalar Cuadrilla en Antigravity."
  bash "$DIR/gemini/activar-cuota.sh"
fi

echo
echo "[4/4] Comprobando..."
bash "$DIR/verificar.sh"
echo
echo "[OK] Reinicia Claude Code y escribe /cuadrilla."
echo
