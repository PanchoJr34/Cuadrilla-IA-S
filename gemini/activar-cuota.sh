#!/bin/bash
# Hace que Antigravity guarde su estado para que el panel de Cuadrilla muestre la cuota.
# Equivalente para macOS de activar-cuota.ps1.

DIR="$HOME/.gemini/antigravity-cli"
SETTINGS="$DIR/settings.json"
SCRIPT="$HOME/.gemini/cuadrilla-estado"

mkdir -p "$DIR"

# Script que agy llama con su estado en la entrada; lo guarda donde el panel lo lee.
cat > "$SCRIPT" <<'EOF'
#!/bin/bash
cat > "$HOME/.gemini/cuadrilla-estado.json"
EOF
chmod +x "$SCRIPT"

# Se edita settings.json con JavaScript de macOS (osascript), que viene en todas las Mac.
SETTINGS="$SETTINGS" SCRIPT="$SCRIPT" osascript -l JavaScript <<'EOF'
ObjC.import('Foundation')
const env = $.NSProcessInfo.processInfo.environment
const path = ObjC.unwrap(env.objectForKey('SETTINGS'))
const command = ObjC.unwrap(env.objectForKey('SCRIPT'))
const fm = $.NSFileManager.defaultManager
;(() => {
const exists = fm.fileExistsAtPath(path)

let settings = {}
if (exists) {
  const raw = ObjC.unwrap($.NSString.stringWithContentsOfFileEncodingError(path, $.NSUTF8StringEncoding, null)) || ''
  try { settings = JSON.parse(raw.replace(/^\uFEFF/, '') || '{}') } catch (e) {
    console.log('[AVISO] settings.json de Antigravity no es JSON valido. Cuadrilla no lo cambio.')
    return
  }
}

if (settings.statusLine && /cuadrilla-estado/.test(String(settings.statusLine.command))) delete settings.statusLine
if ('statusLine' in settings) {
  console.log('[AVISO] Antigravity ya tiene una barra de estado. Cuadrilla no la cambio; la cuota de Gemini no aparecera en el panel.')
  return
}

if (exists) {
  const bak = path + '.cuadrilla.bak'
  fm.removeItemAtPathError(bak, null)
  fm.copyItemAtPathToPathError(path, bak, null)
}
settings.statusLine = { type: 'command', command: command, stack_with_default: true }
$(JSON.stringify(settings, null, 2)).writeToFileAtomicallyEncodingError(path, true, $.NSUTF8StringEncoding, null)
console.log('[OK] Cuota de Gemini activada.')
})()
EOF
