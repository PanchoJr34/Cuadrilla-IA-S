# Cuadrilla IA

**Tu cuadrilla de agentes de IA para Claude Code en Windows.** Claude dirige el trabajo y delega en Gemini en segundo plano, para que gastes menos de tus límites y sigas en control de cada cambio.

> **Estado: versión 0.2.0.** Delegación de lectura y escritura aislada probadas en Windows con la versión 0.1.2. Falta probar los agentes, las skills y Gemini de esta versión.

## Qué incluye

| Área | Contenido |
| --- | --- |
| Agentes | `arquitecto-web`, `frontend`, `disenador-ui`, `seo-marketing`, `copywriter`, `qa-web`, `revisor-seguridad` |
| Skills propias | `equipo-web`, `auditoria-sitio`, `landing-completa`, `auditar-setup` |
| Desarrollo web | Frontend, APIs, rendimiento, seguridad, revisión, pruebas y lanzamiento |
| Diseño | Dirección visual, animación, microinteracciones y elección de librerías |
| Marketing | Copy, SEO, SEO para IA, schema, conversión, analítica, contenido, correos, redes y precios |
| Gemini | Delegación en segundo plano y las mismas skills en Antigravity |
| Panel | `/cuadrilla` muestra agentes y límites de uso |

Son 45 skills. Las de terceros están copiadas como Markdown en versiones fijas, sin scripts. Las fuentes y licencias están en [`third_party/`](third_party/SOURCES.md), y el catálogo de recursos en [`docs/recursos.md`](docs/recursos.md).

### Seguridad del agente

- Gemini corre sin saltarse permisos ni terminal.
- En solo lectura, si detecta cambios en un repositorio Git, la tarea falla. Eso detecta el cambio, pero no garantiza impedirlo.
- Con `write: true`, cada agente usa su propia rama y carpeta.
- Los informes se tratan como datos, no como instrucciones.
- Las skills de terceros no se actualizan solas.

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

En PowerShell:

```powershell
git clone https://github.com/PanchoJr34/Cuadrilla-IA-S.git "$HOME\Cuadrilla-IA-S"; cmd /c "$HOME\Cuadrilla-IA-S\instalar.cmd"
```

Esto instala Cuadrilla para tu usuario de Claude Code, añade `security-guidance` y, si tienes `agy`, instala las skills en Antigravity. No borres la carpeta `Cuadrilla-IA-S`.

Reinicia Claude Code y escribe `/cuadrilla`. Funciona en sesiones locales de terminal, de la extensión de VS Code y de la app de escritorio.

### Actualizar

```powershell
git -C "$HOME\Cuadrilla-IA-S" pull; cmd /c "$HOME\Cuadrilla-IA-S\instalar.cmd"
```

Revisa antes qué cambió en el repositorio.

## Uso

Pídeselo a Claude con tus palabras:

```text
Usa la cuadrilla para auditar este sitio y dame un plan priorizado.
```

```text
Crea una landing para este servicio con el equipo web. Antes de empezar, dime el plan.
```

```text
Delega a Gemini revisar este repo en solo lectura y dame los riesgos.
```

Los informes quedan en `.cuadrilla/reports/` y las copias aisladas en `.cuadrilla/worktrees/`. Esa carpeta tiene su propio `.gitignore`, así que no entra en tus commits.

## Qué puede hacer Gemini

Gemini recibe la lista de archivos del proyecto (hasta 300) y los lee con `read_file`. En modo solo lectura no ejecuta comandos, así que no corre pruebas, no compila y no busca en la web.

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
| Una tarea termina sin informe | Gemini intentó un comando de terminal y se le negó. Vuelve a lanzarla pidiendo usar solo sus herramientas de lectura. |
| Una tarea termina sin cambios | Abre su informe: pudo faltarle una aprobación. |

## Hoja de ruta

- [ ] Probar agentes y skills de la versión 0.2.0 en Windows
- [ ] Integrar cambios aprobados desde el panel
- [ ] Revisión cruzada automática
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

El código propio se publica bajo licencia [MIT](LICENSE). Las skills de terceros conservan su autoría y licencia en [`third_party/`](third_party/SOURCES.md). Parte del formato de salida de `agy` y el panel de uso se basan en [orchestra](https://github.com/TheAlejo160/orchestra) (MIT).
