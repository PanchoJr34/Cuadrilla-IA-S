# Cuadrilla IA

**Tu cuadrilla de agentes de IA para Claude Code en Windows.** Claude dirige el trabajo y delega en Gemini en segundo plano, para que gastes menos de tus límites y sigas en control de cada cambio.

> **Estado: versión 0.1.0, en pruebas.** Pasa sus pruebas automáticas con procesos simulados, pero todavía falta confirmar el flujo completo en Windows.

## Por qué existe

Otras herramientas de agentes están pensadas para macOS o Linux. Cuadrilla nace para Windows: lanza los agentes directamente, sin zsh ni WSL.

| Función | Qué hace |
| --- | --- |
| Agentes en segundo plano | Sigues trabajando con Claude mientras Gemini avanza. Hasta 3 a la vez. |
| Solo lectura por defecto | Si un agente de solo lectura cambia archivos, la tarea se marca como fallida. |
| Escritura aislada | Con `write: true`, cada agente trabaja en su propia rama y carpeta. Nada toca tu proyecto hasta que lo revises. |
| Sin saltarse permisos | Nunca usa `--dangerously-skip-permissions`. Lo que necesita aprobación se niega y queda en el informe. |
| Informes como datos | Lo que devuelve un agente no se trata como instrucciones. |
| Panel | `/cuadrilla` muestra qué hace cada agente. |

## Cómo funciona

```text
Tú ─▶ Claude Code (dirige, decide e integra)
          │
          ├─ Solo lectura ─▶ Gemini lee tu proyecto ─▶ informe
          │
          └─ Escritura ────▶ Gemini en rama aislada ─▶ informe y cambios
                                                          │
                                 Claude los revisa y tú apruebas si se integran
```

## Requisitos

- Windows 10 o 11.
- [Claude Code](https://code.claude.com/docs/en/setup), con un plan que lo incluya y sesión iniciada.
- [Git](https://git-scm.com/downloads/win), para que los agentes editen en copias aisladas.
- Antigravity CLI (`agy`), con sesión iniciada en tu cuenta de Google.

Para instalar Antigravity CLI en PowerShell:

```powershell
irm https://antigravity.google/cli/install.ps1 | iex
```

Después abre una terminal nueva, corre `agy` una vez para iniciar sesión y comprueba:

```powershell
agy -p "Responde solo: OK" --output-format json
```

Debe responder `"status":"SUCCESS"`.

## Instalación

1. Baja este repositorio: botón **Code > Download ZIP**, o `git clone`.
2. Extráelo en una carpeta fija, como `C:\Cuadrilla-IA-S`. No la borres: el plugin se carga desde ahí.
3. Haz doble clic en `instalar.cmd`.
4. Reinicia Claude Code y escribe `/cuadrilla`.

Si el doble clic solo muestra el texto del archivo, corre esto en PowerShell con tu ruta:

```powershell
cmd /c "C:\Cuadrilla-IA-S\instalar.cmd"
```

### Actualizar

Reemplaza la carpeta por la versión nueva, en la misma ruta, y ejecuta otra vez `instalar.cmd`.

## Uso

Abre Claude Code en la carpeta de tu proyecto y pídeselo con tus palabras:

```text
Delega a Gemini una tarea de solo lectura: revisa este repo y dame los riesgos principales.
```

```text
Delega a Gemini, con escritura aislada, agregar pruebas al módulo de login. Cuando termine, revisa sus cambios conmigo.
```

Los informes quedan en `.cuadrilla/reports/` y las copias aisladas en `.cuadrilla/worktrees/`. Esa carpeta tiene su propio `.gitignore`, así que no entra en tus commits.

## Seguridad y privacidad

- Lo que delegas a Gemini se envía a Google con tu cuenta. Claude trabaja con tu cuenta de Anthropic.
- Al iniciar sesión en `agy`, puedes desmarcar la opción de compartir tus interacciones para mejorar el producto.
- No delegues contraseñas, claves ni datos personales.
- Antes de usarlo con información de una empresa, confirma qué se permite enviar a cada proveedor.
- La detección de cambios en modo solo lectura necesita un repositorio Git. Fuera de uno, no puede comprobarlos.
- Revisa siempre los cambios antes de integrarlos.

## Problemas comunes

| Mensaje | Solución |
| --- | --- |
| No se reconoce `claude` o `agy` | Abre una terminal nueva y revisa que su carpeta esté en el PATH. |
| No se pudo iniciar agy | Corre `agy --version` en una terminal nueva y reinicia Claude Code. |
| `write: true` necesita Git | Trabaja dentro de un repositorio con al menos un commit. |
| Una tarea termina sin cambios | Abre su informe: pudo faltarle una aprobación. |

## Hoja de ruta

- [ ] Confirmar el flujo completo en Windows
- [ ] Integrar cambios aprobados desde el panel
- [ ] Limpiar copias aisladas terminadas
- [ ] Revisión cruzada automática
- [ ] Perfiles de agentes por tipo de tarea
- [ ] Más proveedores opcionales

## Desarrollo

```powershell
claude plugin validate .
claude plugin test .
```

Para probar cambios locales:

```powershell
claude --plugin-dir .
```

## Créditos y licencia

Publicado bajo licencia [MIT](LICENSE). El formato de salida de `agy` se tomó como referencia de [orchestra](https://github.com/TheAlejo160/orchestra), también MIT.
