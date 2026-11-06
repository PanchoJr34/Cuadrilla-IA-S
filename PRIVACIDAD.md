# Aviso de privacidad y condiciones de uso

Este documento explica cómo se comporta Cuadrilla IA. No es asesoría legal.

## Qué datos maneja

Cuadrilla no tiene servidor propio, no pide contraseñas y no envía telemetría. Corre en tu equipo y usa las sesiones que tú iniciaste en Claude Code y Antigravity.

| Dónde | Qué se guarda o envía |
| --- | --- |
| Tu equipo | Informes en `.cuadrilla/reports/`, copias aisladas en `.cuadrilla/worktrees/` y estado del panel, y un archivo local con el estado de Antigravity, que incluye tu correo y cuota |
| Anthropic | Lo que usas en Claude Code, con tu cuenta y según sus condiciones |
| Google | La tarea delegada, hasta 300 nombres de archivo y el contenido que Gemini lea, con tu cuenta y según sus condiciones |
| Conectores | Solo lo que autorices en cada servicio externo |

Cuadrilla omite de la lista archivos con nombres típicos de secretos, como `.env` y `.pem`, y le pide a Gemini no leerlos. Esa protección es parcial: no sustituye revisar qué contiene tu proyecto.

Al iniciar sesión en `agy`, puedes desmarcar la opción de compartir tus interacciones para mejorar el producto.

## Uso responsable

- No delegues contraseñas, claves, datos personales ni información confidencial sin autorización.
- Confirma qué información de tu organización se puede enviar a cada proveedor.
- Si tratas datos de otras personas, cumple las leyes que te apliquen. En México puede aplicar la normativa de protección de datos personales.
- Usa las skills de marketing sin inventar testimonios, cifras ni reseñas, y respeta las reglas de cada plataforma.
- Audita solo sistemas tuyos o para los que tengas autorización.
- Revisa todo resultado antes de publicarlo o integrarlo. La IA puede equivocarse.

## Sin garantía

El software se entrega "tal cual", según la licencia [MIT](LICENSE). El uso, los cambios y sus resultados son responsabilidad de quien lo opera. Las skills de terceros conservan sus licencias en [`third_party/`](third_party/SOURCES.md).
