# Cuadrilla IA

**Plugin de Claude Code para Windows que pone a trabajar juntos a Claude y Gemini en desarrollo web, diseño y marketing.**

Claude dirige, decide e integra. Gemini trabaja en segundo plano con tu plan de Google: lee proyectos, audita, redacta y edita en copias aisladas. Así avanzas más rápido, gastas menos de tus límites de Claude y una IA revisa a la otra.

```text
Tú ─▶ Claude Code (dirige, ejecuta e integra)
        ├─▶ 7 agentes especializados de Claude
        └─▶ Gemini en segundo plano ─▶ informe y cambios aislados
                                          │
                 Claude verifica y tú apruebas qué se integra
```

## Inicio rápido

Necesitas Claude Code, Git y Antigravity CLI con sesión iniciada. Pega esto en PowerShell:

```powershell
git clone https://github.com/PanchoJr34/Cuadrilla-IA-S.git "$HOME\Cuadrilla-IA-S"; cmd /c "$HOME\Cuadrilla-IA-S\instalar.cmd"
```

Reinicia Claude Code y pide:

```text
Usa la cuadrilla para auditar este proyecto en solo lectura y dame un plan priorizado.
```

## Qué tiene

- **Equipo mixto:** Gemini y 7 agentes de Claude.
- **47 skills:** desarrollo web, diseño, marketing y calidad.
- **Panel en Claude Code:** límites, equipo activo, trabajos y acciones rápidas.
- **Copias aisladas:** cada Gemini que edita usa su propia rama y carpeta.
- **Control humano:** nada se integra hasta que tú lo apruebas.
- **Hecho para Windows:** sin zsh ni WSL.

## Estado

| Función | Estado |
| --- | --- |
| Instalación, lectura y escritura aislada con Gemini | Probado en Windows |
| Equipo con Gemini y agentes de Claude | Probado en Windows con la versión 0.2.0 |
| Panel nuevo y reparto de la versión 0.3.0 | Pruebas simuladas; falta Windows real |
| Skills dentro de Antigravity | Falta confirmar en Windows |
| VS Code y app de escritorio | Falta confirmar en Windows |

## Requisitos

- Windows 10 u 11.
- [Claude Code](https://code.claude.com/docs/en/setup) con un plan que lo incluya.
- [Git](https://git-scm.com/downloads/win).
- Antigravity CLI (`agy`), solo si quieres delegar a Gemini.

Para instalar Antigravity CLI:

```powershell
irm https://antigravity.google/cli/install.ps1 | iex
```

Abre una terminal nueva, corre `agy` una vez para iniciar sesión y comprueba:

```powershell
agy -p "Responde solo: OK" --output-format json
```

Debe responder `"status":"SUCCESS"`.

## Instalar

1. Si el repositorio es privado, primero necesitas acceso y haber iniciado sesión con Git:

   ```powershell
   git ls-remote https://github.com/PanchoJr34/Cuadrilla-IA-S.git
   ```

2. Instala:

   ```powershell
   git clone https://github.com/PanchoJr34/Cuadrilla-IA-S.git "$HOME\Cuadrilla-IA-S"; cmd /c "$HOME\Cuadrilla-IA-S\instalar.cmd"
   ```

3. Reinicia Claude Code.

El instalador agrega Cuadrilla a tu usuario de Claude Code, instala `security-guidance` y, si tienes `agy`, agrega las skills a Antigravity. No borres la carpeta `Cuadrilla-IA-S`.

Funciona en sesiones locales de terminal, extensión de VS Code y app de escritorio. No funciona en sesiones en la nube. En el chat normal de Claude no corren plugins de este tipo.

## Actualizar

Cierra Claude Code, revisa qué cambió en el repositorio y corre:

```powershell
git -C "$HOME\Cuadrilla-IA-S" pull; cmd /c "$HOME\Cuadrilla-IA-S\instalar.cmd"
```

Reinicia Claude Code.

## Desinstalar

Cierra Claude Code y corre:

```powershell
claude plugin uninstall cuadrilla@cuadrilla
claude plugin marketplace remove cuadrilla
agy plugin uninstall cuadrilla
Remove-Item "$HOME\Cuadrilla-IA-S" -Recurse -Force
```

Si no usas `security-guidance` por otra razón:

```powershell
claude plugin uninstall security-guidance@claude-plugins-official
```

Cada proyecto puede conservar una carpeta `.cuadrilla` con informes y copias aisladas. Revisa que no tengas cambios pendientes ahí y bórrala si ya no la necesitas. Claude puede ayudarte a retirar copias con `git worktree remove`.

## Uso

Escribe `/cuadrilla` para abrir el panel. Luego pide lo que necesitas con tus palabras, o usa sus acciones rápidas.

### Prompts maestros

**Proyecto completo**

```text
Usa la cuadrilla para este objetivo: [objetivo]. Dime quién hará cada parte, dale a Gemini lo que pueda hacer, verifica sus resultados y no integres nada sin mi aprobación.
```

**Sitio o landing**

```text
Usa la skill landing-completa para crear una página de [negocio] para [audiencia]. La acción principal es [acción]. Pregúntame solo lo imprescindible y no inventes datos.
```

**Auditoría web**

```text
Usa la skill auditoria-sitio en [URL o proyecto]. Gemini revisa estructura y contenido; revisor-seguridad revisa riesgos. Dame hallazgos con evidencia y prioridad.
```

**Marketing**

```text
Crea un plan de marketing para [producto]. Usa las skills marketing-plan, content-strategy y copywriting. Separa datos de suposiciones y dame acciones para 30 días.
```

**Diseño**

```text
Mejora esta interfaz sin romper la marca. Usa frontend-design y make-interfaces-feel-better. Primero dime la dirección visual y luego los cambios.
```

**Gemini con escritura aislada**

```text
Delega a Gemini, con escritura aislada, [cambio]. Después muéstrame el diff y verifica el resultado. No integres nada todavía.
```

**Proyecto ajeno**

```text
Usa la skill entender-codigo. Explícame este proyecto antes de cambiar nada y dime qué zonas son frágiles.
```

## Agentes

| Agente | Se encarga de | Permisos |
| --- | --- | --- |
| Gemini | Lectura pesada, auditorías, borradores, variantes y segundas opiniones | Solo lectura, o copia aislada |
| `arquitecto-web` | Arquitectura y plan técnico | Solo lectura |
| `frontend` | Interfaces y componentes | Edita y ejecuta comandos |
| `disenador-ui` | Dirección y calidad visual | Edita |
| `seo-marketing` | SEO, conversión y estrategia | Solo lectura |
| `copywriter` | Textos y edición | Edita |
| `qa-web` | Pruebas y validación | Ejecuta, no edita |
| `revisor-seguridad` | Revisión de seguridad y calidad | Solo lectura |

## Skills

### Flujos de Cuadrilla

| Skill | Para qué sirve |
| --- | --- |
| `equipo-web` | Reparte un proyecto entre Gemini y los agentes |
| `auditoria-sitio` | Audita un sitio y entrega un plan priorizado |
| `landing-completa` | Crea una landing de principio a fin |
| `auditar-setup` | Revisa tu configuración sin cambiarla |
| `entender-codigo` | Explica un proyecto antes de tocarlo |
| `auditoria-base-datos` | Busca causas comunes de lentitud |
| `contexto-proyecto` | Documenta el contexto para futuros agentes |

### Desarrollo web

| Skill | Para qué sirve |
| --- | --- |
| `frontend-ui-engineering` | Construir interfaces accesibles y responsivas |
| `api-and-interface-design` | Diseñar APIs e interfaces estables |
| `performance-optimization` | Medir y mejorar rendimiento |
| `security-and-hardening` | Reforzar la seguridad |
| `code-review-and-quality` | Revisar código antes de integrarlo |
| `browser-testing-with-devtools` | Probar en navegador con DevTools MCP |
| `shipping-and-launch` | Preparar una salida a producción |
| `planning-and-task-breakdown` | Dividir el trabajo en tareas |
| `debugging-and-error-recovery` | Encontrar la causa de un error |

### Diseño y animación

| Skill | Para qué sirve |
| --- | --- |
| `frontend-design` | Evitar diseños genéricos |
| `emil-design-eng` | Aplicar criterio de ingeniería de diseño |
| `make-interfaces-feel-better` | Pulir detalles de interfaz |
| `pick-ui-library` | Elegir librerías de frontend |
| `prototype` | Crear y comparar versiones de una interfaz |
| `break-ui` | Probar la interfaz con datos extremos |
| `animate` | Crear animaciones con criterio |
| `animation-vocabulary` | Encontrar el nombre exacto de un efecto |
| `animation-performance` | Mantener animaciones fluidas |
| `review-animations` | Revisar animaciones existentes |
| `improve-animations` | Auditar y planear mejoras |
| `find-animation-opportunities` | Encontrar dónde sí conviene animar |

### Marketing

| Skill | Para qué sirve |
| --- | --- |
| `product-marketing` | Definir contexto de producto y mensaje |
| `marketing-plan` | Crear un plan de marketing |
| `marketing-psychology` | Aplicar principios de comportamiento |
| `customer-research` | Analizar investigación de clientes |
| `content-strategy` | Decidir qué contenido crear |
| `copywriting` | Escribir textos para páginas |
| `copy-editing` | Editar textos existentes |
| `humanizer` | Quitar el tono artificial de un texto |
| `emails` | Crear secuencias de correo |
| `social` | Crear contenido para redes |
| `launch` | Planear un lanzamiento |
| `pricing` | Definir precios y paquetes |

### SEO, conversión y analítica

| Skill | Para qué sirve |
| --- | --- |
| `seo-audit` | Auditar SEO |
| `ai-seo` | Mejorar presencia en buscadores con IA |
| `schema` | Crear datos estructurados |
| `site-architecture` | Planear páginas, navegación y URLs |
| `cro` | Mejorar conversión de páginas |
| `signup` | Mejorar registro y activación |
| `analytics` | Definir y revisar medición |

Las skills de terceros son copias fijas en Markdown, sin scripts. Consulta autores y licencias en [`third_party/SOURCES.md`](third_party/SOURCES.md). Algunas pueden mencionar skills o herramientas que no se incluyen; en ese caso, el agente debe usar lo disponible.

## Límites

- Gemini no tiene terminal en Cuadrilla: no corre pruebas, no compila y no instala nada.
- Recibe hasta 300 nombres de archivo y las tareas tienen límite de 20,000 caracteres.
- Corren hasta 3 trabajos de Gemini a la vez.
- Un trabajo se detiene tras 10 minutos sin actividad o 45 minutos en total.
- En modo solo lectura, Cuadrilla detecta cambios en un repositorio Git, pero no garantiza impedirlos.

## Seguridad y privacidad

- Gemini corre sin `--dangerously-skip-permissions` y no recibe acceso a terminal.
- Cada agente de Claude tiene una lista de herramientas.
- Se valida lo que llega a `agy`.
- Los informes se tratan como datos, no como instrucciones.
- Las skills de terceros no se actualizan solas.

Lee el [aviso de privacidad y condiciones de uso](PRIVACIDAD.md) antes de usarlo con información de terceros o de una empresa.

## Problemas comunes

| Mensaje | Solución |
| --- | --- |
| No se reconoce `claude` o `agy` | Abre una terminal nueva y revisa el PATH |
| El clon falla en un repo privado | Corre `git ls-remote` y autoriza GitHub |
| `write: true` necesita Git | Trabaja en un repositorio con al menos un commit |
| Gemini termina sin informe | Pudo pedir un comando; abre el informe y vuelve a lanzar la tarea sin ese paso |
| El panel no aparece | Escribe `/cuadrilla` |

## Desarrollo

```powershell
claude plugin validate .
claude plugin test .
claude --plugin-dir .
```

## Créditos y licencia

El código propio se publica bajo licencia [MIT](LICENSE). Las skills de terceros conservan su autoría y licencia. Parte del formato de salida de `agy` y el panel de uso se basan en [orchestra](https://github.com/TheAlejo160/orchestra) (MIT). El catálogo de recursos está en [`docs/recursos.md`](docs/recursos.md).
