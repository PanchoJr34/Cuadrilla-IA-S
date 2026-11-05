---
name: auditar-setup
description: Audita sin cambiar nada las instrucciones, skills, plugins, hooks y permisos de Claude Code para encontrar duplicados, conflictos y riesgos.
---

# Auditar setup

No modifiques nada. Revisa `CLAUDE.md`, `AGENTS.md`, reglas, skills, plugins, hooks, servidores MCP y permisos del usuario y del proyecto.

Entrega una tabla con hallazgo, archivo, riesgo o costo, y sugerencia. Señala:

- Instrucciones duplicadas, contradictorias u obsoletas.
- Skills o plugins que ya no se usan.
- Hooks que ejecutan código, permisos amplios y plugins sin revisar.
- Secretos en archivos de configuración, sin mostrar sus valores.

Termina con los tres cambios más útiles. Aplica cambios solo si la persona lo aprueba.
