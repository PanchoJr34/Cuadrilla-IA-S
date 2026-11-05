# Prompts de Cuadrilla

Reemplaza lo que está entre corchetes. Mientras más claro el contexto, mejor el resultado.

## Auditoría completa de sitio

```text
OBJETIVO: Auditar [sitio o proyecto] y decidir qué arreglar primero.
CONTEXTO: Es para [negocio], su audiencia es [audiencia] y su objetivo principal es [objetivo].
ALCANCE: Solo lectura. No cambies archivos.
EQUIPO:
- gemini-auditor-web: estructura, calidad y accesibilidad.
- gemini-seo-marketing: SEO, mensaje y conversión con las skills seo-audit y cro.
- revisor-seguridad: autenticación, datos y secretos.
- Claude: verifica hallazgos importantes y consolida.
ENTREGA: Resumen de 5 líneas y tabla con hallazgo, evidencia, impacto, esfuerzo y prioridad. Termina con los 3 cambios a hacer primero.
LÍMITES: No inventes métricas. Separa lo verificado de lo probable.
```

## Landing de alta conversión

```text
OBJETIVO: Crear una landing para [producto] que logre [acción principal].
CONTEXTO: Audiencia: [audiencia]. Problema: [problema]. Oferta: [oferta]. Marca: [colores, tono o enlace].
ALCANCE: Trabaja en [carpeta]. Stack: [stack].
EQUIPO:
- gemini-investigador: resume competidores y objeciones.
- gemini-copywriter: propone mensaje y textos con la skill copywriting.
- disenador-ui: define la dirección visual con frontend-design.
- frontend: implementa la versión elegida.
- qa-web: prueba móvil, escritorio y accesibilidad.
ENTREGA: Primero mensaje y dirección visual para aprobar. Después página, comprobaciones y pendientes.
LÍMITES: No inventes testimonios, clientes, cifras ni logos. No publiques nada.
```

## Plan de SEO

```text
OBJETIVO: Crear un plan de SEO de 90 días para [sitio].
CONTEXTO: Vendemos [producto] en [mercado]. Los datos disponibles son [Search Console, Analytics o ninguno].
ALCANCE: Solo análisis y propuestas.
EQUIPO:
- gemini-seo-marketing: auditoría y oportunidades con seo-audit, ai-seo y schema.
- seo-marketing: prioriza por impacto y esfuerzo.
ENTREGA: Diagnóstico, plan por mes, cambios técnicos, ideas de contenido y cómo medir.
LÍMITES: Sin garantías de posiciones. Marca como hipótesis lo que no tenga datos.
```

## Plan de marketing

```text
OBJETIVO: Lograr [meta] en [tiempo].
CONTEXTO: Producto: [producto]. Cliente ideal: [cliente]. Presupuesto: [monto]. Canales actuales: [canales].
EQUIPO:
- gemini-investigador: analiza mercado y competencia.
- seo-marketing: define estrategia con marketing-plan y marketing-psychology.
- copywriter: crea mensajes clave.
ENTREGA: Estrategia, calendario de 30 días, mensajes por canal, métricas y riesgos.
LÍMITES: No inventes datos de mercado. Cita fuentes o márcalo como supuesto.
```

## Rediseño de interfaz

```text
OBJETIVO: Mejorar [pantalla] para que sea más clara y profesional.
CONTEXTO: Marca: [marca]. Usuarios: [usuarios]. Lo que no funciona: [problema].
ALCANCE: Cambia solo [archivos]. Conserva la lógica.
EQUIPO:
- gemini-disenador-ui: propone cambios en copia aislada con make-interfaces-feel-better.
- disenador-ui: decide la dirección final.
- qa-web: comprueba responsive y accesibilidad.
ENTREGA: Antes y después, diff y lista de pruebas.
LÍMITES: No integres nada sin mi aprobación.
```

## Función nueva

```text
OBJETIVO: Implementar [función].
CONTEXTO: Reglas de negocio: [reglas]. Archivos relacionados: [archivos].
ALCANCE: Puedes editar [carpetas]. No cambies [restricciones].
EQUIPO:
- arquitecto-web: plan mínimo.
- gemini-frontend o frontend: implementación.
- qa-web: pruebas.
- gemini-revisor y revisor-seguridad: revisión.
ENTREGA: Plan para aprobar, cambios, comprobaciones y riesgos.
LÍMITES: Sin dependencias nuevas sin avisar.
```

## Entender un proyecto ajeno

```text
OBJETIVO: Entender [proyecto] antes de cambiarlo.
ALCANCE: Solo lectura.
EQUIPO:
- gemini-investigador: mapa del proyecto.
- Claude: confirma las partes críticas con la skill entender-codigo.
ENTREGA: Qué hace, cómo fluye, zonas seguras, zonas frágiles y por dónde empezar.
LÍMITES: Cita archivos reales.
```

## Documentación

```text
OBJETIVO: Documentar [proyecto] para [audiencia].
ALCANCE: Crea o edita solo [carpeta de documentación] en copia aislada.
EQUIPO:
- gemini-documentador: redacta.
- gemini-revisor: compara contra el código.
ENTREGA: Diff de documentos y lista de lo no comprobado.
LÍMITES: Documenta solo lo que exista.
```
