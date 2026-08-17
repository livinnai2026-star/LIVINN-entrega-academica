# Preparación de entrega académica V2 — LIVINN

Fecha: 2026-08-17  
Estado local: **GO**  
Publicación: **PENDIENTE por incidente externo de GitHub**

## Objetivo de esta revisión

Preparar la segunda actualización del repositorio académico con el estado más completo del proyecto, manteniendo fuera del entregable secretos, material descartado y archivos internos de trabajo.

## Contenido incorporado

- Sitio ejecutable y fuente editable equivalentes.
- Nuevo hero panorámico y sus variantes WebP.
- Identidad visual LIVINN integrada en favicon, cabecera y footer.
- Footer con acceso al repositorio académico, sin enlace redundante al mismo sitio publicado.
- Tres publicidades verticales finales y cuatro originales preservados.
- Guiones, subtítulos ASS y script reproducible de montaje audiovisual.
- Fuentes sanitizadas y prompt de trabajo para NotebookLM.
- Memorias técnicas separadas de Iván y Miguel.
- Mapa conceptual final del sistema integral.

## Inventario

- Archivos del entregable: **121**.
- Tamaño total, sin `.git`: **38.36 MiB**.
- Videos MP4: **7**.
- Archivo individual de mayor tamaño: por debajo del límite de 100 MiB de GitHub.
- Activos descartados de dron: **0**.

## Sanitización

La revisión no encontró:

- Archivos `.env`, claves, certificados ni credenciales.
- Tokens de GitHub, OpenAI, Google o Slack.
- Claves privadas ni patrones de API keys.
- Rutas internas del VPS o endpoints privados de MCP.
- Configuración, sesiones o base de estado del agente.
- Datos reales de huéspedes.

El correo `livinnai2026@gmail.com` se conserva porque es el contacto público e intencional del proyecto.

## Flujo técnico documentado

La documentación sanitizada refleja el orden confirmado del agente:

1. Recibe la consulta por WhatsApp.
2. Reúne fechas, cantidad de personas y unidad.
3. Consulta disponibilidad.
4. Presenta cotización y resumen.
5. Espera confirmación explícita del huésped.
6. Registra la operación en Google Sheets.
7. Crea el evento en Google Calendar.
8. Envía la confirmación por Gmail.
9. Mantiene pago y excepciones bajo validación administrativa.

## Pruebas locales

- `index.html` y `LIVINN.dc.html`: equivalentes.
- Home servida por HTTP: carga correcta.
- Página de políticas: carga correcta y conserva footer.
- Archivos comprobados por HTTP: **121**.
- Respuestas HTTP 200: **121**.
- Recursos 404: **0**.
- Consola: **0 errores y 0 advertencias**.
- Videos decodificados de inicio a fin: **7 de 7**.
- Logo mediante máscara CSS: visible.
- Hero nuevo: cargado y decodificado.

### Responsive

| Ancho | Scroll horizontal | Bottom navigation | Resultado |
|---:|---|---|---|
| 320 px | No | Visible | GO |
| 390 px | No | Visible | GO |
| 768 px | No | Visible | GO |
| 1440 px | No | Oculta | GO |

La bottom navigation sólo aparece en los tamaños móviles previstos. La página de políticas tampoco presenta desborde horizontal en móvil ni desktop.

## Producción audiovisual

- Tres anuncios verticales finales están listos para entrega.
- Los cuatro originales se preservan para edición posterior.
- NotebookLM recibió cuatro fuentes sanitizadas para el resumen de la experiencia web de Iván.
- El Video Overview de Iván fue generado en español, formato breve, con duración de 1:28.
- El video final conjunto de 3–4 minutos permanece como etapa de montaje posterior, combinando las piezas de Iván y Miguel con evidencia real del producto.

## Estado de Git

Los cambios quedaron preparados localmente en `main`. No se realizó push durante esta auditoría porque GitHub reportaba degradación en Git Operations y Webhooks. Se evita así dejar el repositorio actualizado sin que Vercel reciba correctamente el evento de publicación.

## Dictamen

**GO local / PUSH PENDIENTE.** El entregable está completo, sanitizado y verificado. La única espera es externa: realizar commit y push cuando GitHub confirme la recuperación de operaciones Git y webhooks.
