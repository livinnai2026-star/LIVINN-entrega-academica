# Video explicativo para Raúl — 4 minutos

Formato: horizontal 16:9, 1920 × 1080. Esta es una estructura de grabación, no un texto para memorizar palabra por palabra.

## 0:00–0:25 — Problema y objetivo

- Presentar LIVINN y al equipo.
- Explicar la necesidad: mostrar las unidades, ordenar la consulta y facilitar el contacto con el alojamiento.
- Mostrar brevemente el resultado final en producción.

## 0:25–1:20 — Experiencia del huésped

- Recorrer hero, unidades, servicios, galería y ubicación.
- Abrir el detalle de una unidad y su galería.
- Mostrar navegación móvil, accesibilidad y adaptación responsive.
- Mencionar las 23 posiciones visuales integradas y revisadas.

## 1:20–1:55 — Consulta por WhatsApp

- Elegir unidad, fechas, huéspedes y comentario.
- Mostrar el mensaje estructurado que prepara la web.
- Aclarar que la disponibilidad se valida y confirma por WhatsApp.
- Diferenciar consulta de fechas y soporte general.

## 1:55–2:40 — Arquitectura

- La web estática y responsive prepara una consulta estructurada y abre la conversación en WhatsApp.
- El código y el historial de versiones se conservan en GitHub; Vercel publica automáticamente la versión principal y permite mantener un respaldo online.
- En un VPS, Miguel desplegó Hermes dentro de un contenedor Docker administrado con Dokploy y lo conectó con WhatsApp mediante QR.
- Hermes reúne los datos y utiliza un MCP remoto de Composio para trabajar con las aplicaciones autorizadas de Google.
- Flujo confirmado: recibir la consulta → pedir fechas, personas y unidad → consultar disponibilidad en Calendar → presentar cotización y resumen → esperar confirmación explícita → crear el evento → registrar en Sheets → enviar confirmación por Gmail.
- El pago queda pendiente de verificación administrativa y los casos excepcionales se escalan a una persona.
- Aclarar expresamente que Google Sheets y Google Calendar no están conectados directamente a la landing: pertenecen a la automatización posterior de WhatsApp.
- Mostrar estas automatizaciones sólo si están activas, verificadas y se pueden demostrar sin exponer datos privados.

## 2:40–3:15 — Proceso y equipo

- Investigación, selección visual, integración, pruebas y auditorías.
- Iván: web, integración visual, experiencia, QA, GitHub y Vercel.
- Miguel: VPS, Docker/Dokploy, Hermes, conexión con WhatsApp y automatización mediante Composio con Calendar, Sheets y Gmail.
- Explicar brevemente cómo se trabajó con asistencia de agentes de IA.

## 3:15–3:45 — Resultado y respaldo

- Mostrar la URL pública actual.
- Enseñar en GitHub la rama principal, la rama anterior y el tag de respaldo.
- Mostrar las dos versiones públicas sin entrar en configuraciones privadas.

## 3:45–4:00 — Cierre

- Resumir el valor: una experiencia clara para el huésped y una base escalable para el negocio.
- Mencionar el siguiente paso realista: ampliar la automatización después de validar el flujo actual.
- Agradecer a Raúl y cerrar con LIVINN.

## Verificación antes de grabar

- Confirmar nombres y responsabilidades del equipo.
- Confirmar qué automatizaciones están realmente funcionando.
- Comprobar con una prueba controlada que el orden documentado coincide con el entorno activo.
- No afirmar que existe protección atómica contra dos solicitudes simultáneas si no se demuestra antes de grabar.
- Preparar datos de demostración sin información personal.
- Cerrar pestañas, notificaciones y paneles que puedan mostrar credenciales.
- Ensayar el recorrido completo una vez antes de grabar.

## Fuentes técnicas para el guion

- `MEMORIA_TECNICA_IVAN_WEB.md`.
- `MEMORIA_TECNICA_MIGUEL_SANITIZADA.md`.
- `MAPAS_CONCEPTUALES_LIVINN.md`.
