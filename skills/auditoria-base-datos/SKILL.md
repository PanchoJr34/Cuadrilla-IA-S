---
name: auditoria-base-datos
description: Audita consultas y uso de base de datos para encontrar causas comunes de lentitud. Úsala cuando una app va lenta o antes de crecer.
---

# Auditoría de base de datos

No modifiques nada. Busca en el código y el esquema:

- Consultas N+1.
- Listados sin paginación.
- Filtros, joins y ordenaciones sin índice.
- Conexiones sin pool o que no se cierran.
- `SELECT *` donde no hace falta.

Entrega hallazgo, archivo y línea, impacto, corrección y prioridad. No afirmes una mejora sin medirla.
