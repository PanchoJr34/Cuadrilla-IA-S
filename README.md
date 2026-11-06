<div align="center">

<img src="assets/hero.svg" alt="Cuadrilla IA: Claude y Gemini trabajando como un solo equipo" width="100%">

<a href="LICENSE"><img alt="MIT License" src="https://img.shields.io/badge/license-MIT-2DD4BF?style=for-the-badge&labelColor=10151A"></a>
<img alt="Windows 10 and 11" src="https://img.shields.io/badge/Windows-10%20%7C%2011-60A5FA?style=for-the-badge&labelColor=10151A">
<img alt="Claude Code plugin" src="https://img.shields.io/badge/Claude%20Code-plugin-F5A524?style=for-the-badge&labelColor=10151A">
<img alt="Gemini through Antigravity CLI" src="https://img.shields.io/badge/Gemini-Antigravity%20CLI-60A5FA?style=for-the-badge&labelColor=10151A">

**Español** · [English](README.en.md)

[Empezar](#empezar-en-10-minutos) · [Cómo funciona](#cómo-funciona) · [Prompts](docs/prompts.md) · [Privacidad](PRIVACIDAD.md)

</div>

| 🤖 Agentes | 🧠 Skills | 🗂️ Áreas | ⚡ Acciones | 🌎 Idiomas |
| :--: | :--: | :--: | :--: | :--: |
| **15** | **101** | **6** | **34** | **ES + EN** |

---

## Descripción técnica

Cuadrilla es un plugin de Claude Code para orquestación multiagente en Windows. Registra una herramienta MCP de delegación, un panel de estado y hooks de enrutamiento. Lanza agentes de Antigravity CLI sin shell, aísla la escritura con `git worktree`, selecciona modelos por turno y trata la salida de otros modelos como datos no confiables.

## De qué trata

Cuadrilla convierte a Claude Code en un equipo de IA para trabajo web. En lugar de pedirle todo a un solo asistente, le dices el resultado que buscas y el trabajo se reparte: Claude organiza, Gemini investiga o produce, otro agente revisa y tú apruebas.

| Sin Cuadrilla | Con Cuadrilla |
| :-- | :-- |
| Un solo chat hace todo | Cada parte la toma un especialista |
| El mismo modelo para cualquier tarea | El modelo cambia según el trabajo |
| Gastas tus límites en lectura pesada | Gemini puede tomar esa parte |
| Quien hace el trabajo se revisa solo | Claude y Gemini se revisan entre sí |
| Los cambios llegan directo al proyecto | Gemini edita en una copia aislada |

<p align="center"><img src="assets/audience.svg" alt="Cuadrilla es para desarrolladores, equipos de sistemas, diseñadores, marketing, fundadores y freelancers" width="96%"></p>

### Cuándo te conviene

- Trabajas en Windows con Claude Code.
- Haces sitios, landings, productos digitales, SEO o campañas.
- Quieres aprovechar tus planes de Claude y Google.
- Prefieres aprobar cada cambio importante.

### Cuándo no

- Si solo necesitas un chat para preguntas rápidas.
- Si trabajas en macOS o Linux: Cuadrilla está hecha para Windows.
- Si no puedes enviar tu código o datos a Anthropic o Google.

## Cómo funciona

```mermaid
flowchart TD
    A[Tú pides un resultado] --> B[Claude organiza el trabajo]
    B --> C[Equipo Claude<br/>decide, ejecuta y prueba]
    B --> D[Equipo Gemini<br/>investiga, audita y crea]
    D --> E[Copia aislada e informe]
    C --> F[Revisión cruzada]
    E --> F
    F --> G{¿Tú apruebas?}
    G -- Sí --> H[Se integra al proyecto]
    G -- No --> I[Se corrige o se descarta]
```

Un ejemplo real:

1. Pides: "Audita esta web y dime qué arreglar primero".
2. `gemini-auditor-web` revisa el proyecto y `gemini-seo-marketing` revisa SEO y mensaje.
3. `revisor-seguridad` de Claude revisa los puntos delicados.
4. Claude cruza los informes, comprueba lo importante y te entrega un plan con prioridades.

## Empezar en 10 minutos

### 1. Revisa lo que necesitas

| Necesitas | Para qué |
| --- | --- |
| Windows 10 u 11 | Sistema compatible |
| Cuenta de Claude con Claude Code (Pro, Max, Team o Enterprise) | Claude y sus agentes |
| Cuenta de Google | Gemini; el uso depende de tu plan |

### 2. Instala las herramientas

Abre **PowerShell** y corre estos comandos, uno por uno:

```powershell
winget install --id Git.Git -e
irm https://claude.ai/install.ps1 | iex
irm https://antigravity.google/cli/install.ps1 | iex
```

Cierra PowerShell y abre una ventana nueva. Si `claude` o `agy` no se reconocen, cierra sesión en Windows y vuelve a entrar.

### 3. Inicia sesión con tus cuentas

Cada persona usa sus propias cuentas. Cuadrilla nunca te pide contraseñas.

**Claude**

```powershell
claude
```

Sigue el navegador, entra con tu cuenta de Claude y autoriza. Cuando vuelvas a la terminal, escribe `/exit`.

**Gemini**

```powershell
agy
```

Elige colores con Enter y entra con tu cuenta de Google. En la pantalla de datos puedes desmarcar **"Yes, I agree to help improve Antigravity CLI"**: presiona Enter sobre la opción, baja a `[Done]` y confirma. Luego sal con `/exit`.

Comprueba Gemini:

```powershell
agy -p "Responde solo: OK" --output-format json
```

Debe decir `"status":"SUCCESS"`.

### 4. Instala Cuadrilla

```powershell
git clone https://github.com/PanchoJr34/Cuadrilla-IA-S.git "$HOME\Cuadrilla-IA-S"; cmd /c "$HOME\Cuadrilla-IA-S\instalar.cmd"
```

El instalador agrega Cuadrilla y el equipo Gemini, y te pregunta si quieres sumar los plugins oficiales. No borres esa carpeta.

### 5. Pruébala

Abre un proyecto:

```powershell
cd "C:\ruta\de\tu\proyecto"
claude
```

Escribe `/cuadrilla` y pega:

```text
Audita este proyecto en solo lectura. gemini-auditor-web revisa la estructura, gemini-seo-marketing revisa el mensaje y revisor-seguridad revisa los riesgos. Cruza los informes y dame un plan priorizado.
```

Si algo falla, corre `cmd /c "$HOME\Cuadrilla-IA-S\verificar.cmd"`.

## El panel

Mira capacidad, modelo, agentes y trabajos sin salir de Claude Code.

<p align="center"><img src="assets/panel.svg" alt="Ilustración del panel de Cuadrilla" width="92%"></p>

## Lo que ves en el panel

- **Capacidad:** cuánto llevas de Claude y Gemini, y cuándo se reinicia.
- **Agentes activos:** quién está trabajando en este momento.
- **Trabajos:** estado, modelo elegido y motivo de cada encargo.
- **Trabajar en:** elige Desarrollo, Diseño, Marketing, Contenido, Negocio o Seguridad, y lanza una de sus 34 acciones.

La cuota de Gemini proviene de Antigravity y se actualiza cuando usas `agy` en modo interactivo. Si el panel la pide, abre `agy` un momento. El dato puede tener un retraso.

## Elección inteligente de modelo

Cuadrilla ajusta la potencia según lo que pides, en español o inglés. En Claude Code cambia también el modelo de tu conversación en cada turno.

| Potencia | Cuándo se usa | Gemini | Claude |
| --- | --- | --- | --- |
| Rápido | Resúmenes, listas, variantes y formato | Flash | Haiku |
| Equilibrado | Trabajo general | Flash, nivel alto | Sonnet |
| Profundo | Auditorías, seguridad, arquitectura y depuración | Argon, nivel alto | Opus |

Para elegir tú, di "usa opus" o "use sonnet". Para apagar el cambio automático, usa el botón del panel o escribe `/cuadrilla-auto off`; para encenderlo, `/cuadrilla-auto on`.

En conversaciones muy largas, Cuadrilla conserva el modelo actual para no exceder la memoria de Haiku o Sonnet. Cambiar de modelo puede romper la caché y gastar más contexto. Fuera de Cuadrilla, el modelo de `agy` y del chat normal lo eliges tú.

## Dónde funciona

| Lugar | Cuadrilla |
| --- | --- |
| Claude Code en terminal | Sí |
| Extensión de VS Code | Sí, en sesiones locales |
| App de escritorio | Sí, en sesiones locales de Claude Code |
| Sesiones en la nube | No |
| Chat normal de Claude | Sin agentes ni panel; usa la skill `cuadrilla-web` como método |

## El equipo

### Equipo Gemini

Trabaja en segundo plano, sin terminal. No ve tu chat, así que Claude le da una tarea completa.

| Agente | Se encarga de | Modo habitual |
| --- | --- | --- |
| `gemini-investigador` | Investigación y documentación | Lectura |
| `gemini-auditor-web` | Auditorías de proyecto | Lectura |
| `gemini-seo-marketing` | SEO, mensaje y conversión | Lectura |
| `gemini-revisor` | Revisar cambios | Lectura |
| `gemini-frontend` | Páginas y componentes | Copia aislada |
| `gemini-disenador-ui` | Dirección y pulido visual | Copia aislada |
| `gemini-copywriter` | Textos | Copia aislada |
| `gemini-documentador` | Documentación | Copia aislada |

### Equipo Claude

Decide, usa herramientas, ejecuta y prueba.

| Agente | Se encarga de | Permisos |
| --- | --- | --- |
| `arquitecto-web` | Arquitectura y plan técnico | Lectura |
| `frontend` | Implementación | Edita y ejecuta |
| `disenador-ui` | Dirección visual | Edita |
| `seo-marketing` | Estrategia y SEO | Lectura |
| `copywriter` | Textos | Edita |
| `qa-web` | Pruebas | Ejecuta, no edita |
| `revisor-seguridad` | Seguridad y calidad | Lectura |

## Usar lo que hizo Gemini

Cuando Gemini edita, trabaja en una copia aparte y no toca tu proyecto. Al terminar:

1. Pide a Claude: `Muéstrame los archivos que cambió y el diff`.
2. Si te convence: `Integra estos cambios en mi proyecto y pruébalos`.
3. Si no: `Descarta esa copia aislada`.

La escritura solo funciona con `gemini-frontend`, `gemini-disenador-ui`, `gemini-copywriter` y `gemini-documentador`.

## Prompts recomendados

Usa esta estructura para que el equipo entienda mejor:

```text
OBJETIVO: Qué quieres lograr.
CONTEXTO: Negocio, audiencia y situación actual.
ALCANCE: Qué se puede tocar y qué no.
EQUIPO: Quién debe hacer cada parte.
ENTREGA: Formato del resultado.
LÍMITES: Datos que no se deben inventar y aprobaciones necesarias.
```

Consulta los [24 prompts maestros](docs/prompts.md) para desarrollo, diseño, marketing, contenido, negocio y seguridad. También están [en inglés](docs/prompts.en.md).

## Qué incluye

### Plugins oficiales

El instalador agrega plugins públicos de Anthropic:

| Área | Plugins |
| --- | --- |
| Código | `code-review`, `pr-review-toolkit`, `feature-dev`, `code-simplifier`, `engineering` |
| Diseño | `frontend-design`, `design` |
| Seguridad | `security-guidance` |
| Negocio | `marketing`, `product-management`, `data`, `productivity` |
| Claude Code | `claude-code-setup`, `claude-md-management`, `skill-creator` |

Pueden sumar gasto de contexto y algunos usan hooks o conectores. Desactiva los que no necesites con `/plugin`. Los conectores externos requieren tu autorización.

### Skills

Son 101, disponibles para Claude y Gemini. Las listadas abajo son las principales; el resto cubre anuncios, ventas, retención, pruebas, móvil y flujo de desarrollo. Las de terceros son copias fijas en Markdown, sin scripts. `pick-ui-library`, `prototype` y `review-animations` solo corren si las pides por nombre.

<details>
<summary><strong>Flujos de Cuadrilla</strong></summary>

| Skill | Para qué sirve |
| --- | --- |
| `equipo-web` | Reparte un proyecto entre Gemini y los agentes |
| `auditoria-sitio` | Audita un sitio y entrega un plan priorizado |
| `landing-completa` | Crea una landing de principio a fin |
| `auditar-setup` | Revisa tu configuración sin cambiarla |
| `entender-codigo` | Explica un proyecto antes de tocarlo |
| `auditoria-base-datos` | Busca causas comunes de lentitud |
| `contexto-proyecto` | Documenta el contexto para futuros agentes |

</details>

<details>
<summary><strong>Desarrollo web</strong></summary>

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

</details>

<details>
<summary><strong>Diseño y animación</strong></summary>

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

</details>

<details>
<summary><strong>Marketing</strong></summary>

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

</details>

<details>
<summary><strong>SEO, conversión y analítica</strong></summary>

| Skill | Para qué sirve |
| --- | --- |
| `seo-audit` | Auditar SEO |
| `ai-seo` | Mejorar presencia en buscadores con IA |
| `schema` | Crear datos estructurados |
| `site-architecture` | Planear páginas, navegación y URLs |
| `cro` | Mejorar conversión de páginas |
| `signup` | Mejorar registro y activación |
| `analytics` | Definir y revisar medición |

</details>

## Seguridad y privacidad

Cuadrilla **no pide ni guarda contraseñas o tokens**. No tiene servidor ni telemetría. Usa las sesiones que tú iniciaste en Claude Code y Antigravity.

| Dónde | Qué queda |
| --- | --- |
| Claude Code, Antigravity y Git | Sus propias sesiones, igual que sin Cuadrilla |
| `.gemini\cuadrilla-estado.json` | Estado de `agy`, con tu correo y tu cuota |
| `.cuadrilla\` en cada proyecto | Informes y copias aisladas |

Gemini puede leer un archivo con secretos si la tarea o algún archivo lo lleva a abrirlo. El filtro de `.env`, llaves y credenciales solo los quita de la lista inicial; no bloquea la lectura. Lo que lea Gemini se envía a Google, y lo que use Claude, a Anthropic.

**Protege tus proyectos:**

- No guardes contraseñas ni claves en el código.
- Usa variables de entorno o un gestor de secretos.
- No delegues tareas con `.env`, respaldos ni datos personales.
- Si un secreto llegó a un informe, cámbialo y borra ese informe.

Consulta también la [política de seguridad](SECURITY.md) y el [aviso de privacidad y condiciones de uso](PRIVACIDAD.md).

## Mapa del proyecto

```text
Cuadrilla-IA-S/
├── agents/            Agentes de Claude
├── gemini/
│   ├── agents/        Agentes de Gemini
│   └── plugin.json    Manifiesto para Antigravity
├── skills/            Skills compartidas
├── references/        Listas de revisión de las skills
├── hooks/             Delegación, panel y pruebas
├── docs/
│   ├── prompts.md     Prompts en español
│   ├── prompts.en.md  Prompts en inglés
│   └── recursos.md    Catálogo de recursos
├── third_party/       Licencias y origen de terceros
├── instalar.cmd       Instalación y actualización
├── verificar.cmd      Diagnóstico
├── SECURITY.md        Reporte de vulnerabilidades
├── CONTRIBUTING.md    Cómo contribuir
└── PRIVACIDAD.md      Privacidad y condiciones de uso
```

## Mantenimiento

### Actualizar

Cierra Claude Code, revisa qué cambió y corre:

```powershell
git -C "$HOME\Cuadrilla-IA-S" pull; cmd /c "$HOME\Cuadrilla-IA-S\instalar.cmd"
```

### Desinstalar

Cierra Claude Code y corre:

```powershell
claude plugin uninstall cuadrilla@cuadrilla
claude plugin marketplace remove cuadrilla
agy plugin uninstall cuadrilla
Remove-Item "$HOME\Cuadrilla-IA-S" -Recurse -Force
```

Los plugins oficiales se quitan aparte con `claude plugin uninstall <plugin>@<marketplace>`. Cada proyecto puede conservar `.cuadrilla` con informes y copias: revisa que no haya nada pendiente antes de borrarla.

## Límites

- Gemini no ejecuta comandos, pruebas ni compilaciones.
- Corren hasta 3 trabajos de Gemini a la vez.
- Recibe hasta 300 nombres de archivo y cada tarea admite hasta 20,000 caracteres.
- Un trabajo se detiene tras 10 minutos sin actividad o 45 minutos en total.
- La solo lectura se comprueba en repositorios Git: detecta cambios, pero no garantiza impedirlos.

## Problemas comunes

| Mensaje | Solución |
| --- | --- |
| No se reconoce `claude` o `agy` | Abre una terminal nueva o reinicia sesión en Windows |
| `write: true` necesita Git | Trabaja en un repositorio con al menos un commit |
| No aparecen los agentes de Gemini | Corre `verificar.cmd` y luego `agy agents` |
| Aparece un momento una ventana de consola | Es normal al lanzar procesos de Windows; se cierra sola |
| Gemini termina sin informe | Quita pasos que requieran comandos y lánzalo otra vez |
| El panel no aparece | Escribe `/cuadrilla` |

## Desarrollo

```powershell
claude plugin validate .
claude plugin test .
claude --plugin-dir .
agy plugin validate --strict .\gemini
```

## Créditos y licencia

Código propio bajo licencia [MIT](LICENSE). Las skills de terceros conservan su autoría y licencia en [`third_party/`](third_party/SOURCES.md). Parte del formato de salida de `agy` y el panel se basan en [orchestra](https://github.com/TheAlejo160/orchestra), también MIT.
