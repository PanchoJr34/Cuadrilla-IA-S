# Prompts maestros

Reemplaza lo que está entre corchetes. [English](prompts.en.md)

## Desarrollo

### Auditoría integral de proyecto

```text
OBJETIVO: Auditar [proyecto] y decidir qué arreglar primero.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-auditor-web: estructura y calidad. revisor-seguridad: riesgos. Claude: verifica y consolida.
ENTREGA: Tabla con hallazgo, evidencia, impacto, esfuerzo y prioridad, más los 3 primeros cambios.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Función nueva

```text
OBJETIVO: Implementar [función] con estas reglas: [reglas].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: arquitecto-web: plan. gemini-frontend o frontend: implementación. qa-web: pruebas. gemini-revisor: revisión.
ENTREGA: Plan para aprobar, diff, pruebas y riesgos.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Depurar un error

```text
OBJETIVO: Encontrar la causa de [error] y corregirla.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: Claude reproduce y corrige. gemini-investigador revisa archivos relacionados.
ENTREGA: Causa raíz, corrección y comprobación.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Refactor seguro

```text
OBJETIVO: Simplificar [módulo] sin cambiar su comportamiento.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: frontend: cambios pequeños. qa-web: pruebas. gemini-revisor: revisión.
ENTREGA: Cambios por etapas y pruebas antes y después.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Rendimiento

```text
OBJETIVO: Mejorar la velocidad de [página o app].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-auditor-web: análisis. frontend: correcciones. qa-web: mediciones.
ENTREGA: Mediciones, causas, cambios e impacto comprobado.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Entender un proyecto

```text
OBJETIVO: Entender [proyecto] antes de cambiarlo.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-investigador: mapa. Claude: confirma lo crítico con entender-codigo.
ENTREGA: Qué hace, flujo, zonas frágiles y por dónde empezar.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

## Diseño

### Dirección visual

```text
OBJETIVO: Definir el estilo de [producto].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-disenador-ui: propuestas. disenador-ui: decisión final.
ENTREGA: Tres direcciones, recomendación, tipografía, color y componentes.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Rediseño

```text
OBJETIVO: Mejorar [pantalla] sin cambiar su lógica.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-disenador-ui en copia aislada. qa-web: responsive y accesibilidad.
ENTREGA: Antes y después, diff y pruebas.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Accesibilidad

```text
OBJETIVO: Revisar la accesibilidad de [sitio].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-auditor-web: revisión. qa-web: comprobación.
ENTREGA: Hallazgos, impacto y corrección.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Animación

```text
OBJETIVO: Mejorar el movimiento de [interfaz].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: disenador-ui con find-animation-opportunities y review-animations.
ENTREGA: Dónde animar, dónde no y cómo implementarlo.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

## Marketing

### Plan de 90 días

```text
OBJETIVO: Lograr [meta] en 90 días.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-investigador: mercado. seo-marketing: estrategia. copywriter: mensajes.
ENTREGA: Plan mensual, canales, métricas, presupuesto y riesgos.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Auditoría SEO

```text
OBJETIVO: Encontrar lo que frena el SEO de [sitio].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-seo-marketing con seo-audit y schema. Claude: verifica.
ENTREGA: Problemas técnicos, contenido, datos estructurados y prioridades.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Visibilidad en IA

```text
OBJETIVO: Mejorar cómo aparece [marca] en buscadores con IA.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-seo-marketing con ai-seo.
ENTREGA: Diagnóstico, contenidos y cambios técnicos.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Conversión

```text
OBJETIVO: Aumentar conversiones de [página].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-seo-marketing con cro. disenador-ui: propuesta.
ENTREGA: Hipótesis, cambios y prueba A/B sugerida.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Competencia

```text
OBJETIVO: Analizar a [competidores].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-investigador con competitor-profiling.
ENTREGA: Comparación, oportunidades, fuentes y supuestos.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Campaña

```text
OBJETIVO: Crear una campaña para [oferta].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: seo-marketing: estrategia. gemini-copywriter: anuncios y correos.
ENTREGA: Audiencias, mensajes, piezas y métricas.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

## Contenido

### Landing

```text
OBJETIVO: Crear una landing para [oferta].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-investigador: objeciones. gemini-copywriter: textos. disenador-ui y frontend: página. qa-web: pruebas.
ENTREGA: Mensaje y diseño para aprobar; después, página y comprobaciones.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Blog

```text
OBJETIVO: Crear contenido sobre [tema] para [audiencia].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-investigador: fuentes. gemini-copywriter: borrador. copywriter: edición.
ENTREGA: Esquema, artículo, título, descripción y enlaces internos.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Calendario de redes

```text
OBJETIVO: Planear redes para [marca] durante [periodo].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: gemini-copywriter con social.
ENTREGA: Calendario, ideas, formatos y textos.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

## Negocio

### Oferta y precios

```text
OBJETIVO: Mejorar la oferta y precio de [producto].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: seo-marketing con offers y pricing.
ENTREGA: Opciones, supuestos, riesgos y recomendación.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Lanzamiento

```text
OBJETIVO: Preparar el lanzamiento de [producto] para [fecha].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: qa-web: producción. seo-marketing: plan. gemini-copywriter: anuncios.
ENTREGA: Plan, responsables, riesgos y lista final.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

## Seguridad

### Auditoría de seguridad

```text
OBJETIVO: Revisar la seguridad de [app].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: revisor-seguridad y gemini-revisor en solo lectura.
ENTREGA: Hallazgos con archivo, impacto, corrección y lo no comprobado.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Salida a producción

```text
OBJETIVO: Confirmar si [proyecto] está listo para publicarse.
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: qa-web, revisor-seguridad y gemini-auditor-web.
ENTREGA: Bloqueos, pendientes, pruebas y decisión.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```

### Auditoría de base de datos

```text
OBJETIVO: Encontrar lentitud en [base de datos o app].
CONTEXTO: Negocio, audiencia y situación actual: [contexto].
ALCANCE: Puedes tocar [archivos o áreas]. No cambies [límites].
EQUIPO: Claude con auditoria-base-datos. gemini-auditor-web: revisión.
ENTREGA: Hallazgos, impacto, corrección y medición.
LÍMITES: No inventes datos. Separa lo verificado de lo supuesto. No integres ni publiques sin mi aprobación.
```
