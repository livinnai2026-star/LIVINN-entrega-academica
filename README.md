# LIVINN — MVP de experiencia y reservas

[Ver sitio publicado](https://mvp-livinn.vercel.app/) · [Ver versión inicial](https://livinn-six.vercel.app/)

![Mapa de presentación de LIVINN](produccion_video/mapa_presentacion_livinn_final.jpg)

LIVINN es un MVP académico para un complejo de cabañas en Llano Grande, Durango. El proyecto conecta una experiencia web responsive con un asistente operativo de WhatsApp, manteniendo separadas la comunicación pública, la automatización y la validación administrativa.

## Qué resuelve

- Presenta cuatro unidades con tarifas, servicios y galerías accesibles.
- Permite elegir unidad, fechas, huéspedes y comentario.
- Prepara un mensaje estructurado y abre la consulta en WhatsApp.
- El asistente reúne los datos y consulta disponibilidad mediante Google Calendar.
- Después de la confirmación explícita, registra primero la reserva en Sheets, crea el evento en Calendar y envía una confirmación por Gmail.
- Los pagos y casos excepcionales permanecen bajo validación humana.

## Arquitectura

```text
Sitio estático en Vercel
        ↓
Consulta estructurada por WhatsApp
        ↓
Hermes en VPS + MCP de Composio
        ↓
Calendar (consulta) · Sheets (registro) · Calendar (evento) · Gmail
        ↓
Validación administrativa
```

La landing no se conecta directamente a Google Calendar o Google Sheets y no confirma disponibilidad ni pagos de forma automática.

## Herramientas utilizadas

LIVINN combinó desarrollo web, inteligencia artificial generativa, producción audiovisual, automatización y servicios cloud.

| Etapa | Herramientas | Uso principal |
|---|---|---|
| Experiencia web | HTML5, CSS3, JavaScript, ChatGPT y Codex | Construcción, integración visual, responsive, accesibilidad, pruebas y documentación |
| Producción visual | Gemini y generación de imágenes de OpenAI | Creación y adaptación de recursos visuales para representar el MVP |
| Publicidad | Google Flow con Veo | Generación de clips verticales a partir de las imágenes aprobadas |
| Presentación académica | NotebookLM | Creación del caso de estudio audiovisual desde fuentes y capturas sanitizadas |
| Procesamiento y QA | PowerShell, Python HTTP Server y FFmpeg | Automatización de tareas, pruebas locales, exportación y validación audiovisual |
| Versionado y publicación | Git, GitHub y Vercel | Historial, ramas, respaldos, repositorio académico y publicación automática |
| Canal e infraestructura | WhatsApp, VPS, Docker, Dokploy, Hermes Agent y OpenRouter | Atención conversacional y ejecución del asistente de reservas |
| Integraciones operativas | MCP de Composio, Google Calendar, Google Sheets y Gmail | Consulta de disponibilidad, registro de solicitudes, creación de eventos y confirmaciones |
| Ubicación | Google Maps | Presentación de la ubicación y acceso a indicaciones desde la web |

## Equipo

- **Iván:** integración visual y funcional de la web, experiencia responsive, accesibilidad, formulario de WhatsApp, pruebas, auditorías, GitHub, respaldos y Vercel.
- **Miguel:** VPS, Docker/Dokploy, Hermes, conexión de WhatsApp, MCP de Composio e integración operativa con Calendar, Sheets y Gmail.

## Contenido del repositorio

- `index.html`: entrada estática de producción.
- `LIVINN.dc.html`: fuente editable principal.
- `politicas.html`: políticas académicas de alojamiento y privacidad.
- `img/`: activos finales consumidos por la web.
- `IMAGE_MANIFEST.md`: relación de las 23 posiciones visuales.
- `auditoria_codex/`: verificaciones técnicas seleccionadas.
- `produccion_video/`: memorias, mapas, guiones y recursos para la presentación audiovisual.

## Ejecutar localmente

Desde la raíz:

```powershell
python -m http.server 4173 --bind 127.0.0.1
```

Abrir `http://127.0.0.1:4173/`. Para validar el comportamiento completo no se recomienda abrir `index.html` mediante `file://`.

## Estado y límites

- Sitio demostrativo y proyecto académico.
- Disponibilidad sujeta a confirmación.
- Sin cobros en línea.
- Redes sociales todavía demostrativas.
- Fotografías desarrolladas para representar la propuesta visual del MVP.
- La demostración del agente debe utilizar datos ficticios y ocultar credenciales e información real de huéspedes.

## Producción audiovisual

El proyecto documenta también su comunicación mediante tres publicidades verticales y un video explicativo integral terminado:

- [Escapada](produccion_video/publicidad/finales/livinn_ad_01_escapada_9x16.mp4)
- [Consulta por WhatsApp](produccion_video/publicidad/finales/livinn_ad_02_consulta_9x16.mp4)
- [Cuatro refugios](produccion_video/publicidad/finales/livinn_ad_03_refugios_9x16.mp4)
- [Caso de estudio integral: Iván + Miguel](produccion_video/notebooklm/salidas/LIVINN_Caso_de_Estudio_Integral.mp4)

El caso de estudio integral utiliza fuentes técnicas y capturas sanitizadas. Su duración final es de 6:22 y conserva la separación de responsabilidades entre la experiencia web, la automatización y la validación administrativa.

## Recursos, tiempo e inversión

LIVINN fue construido como un MVP funcional mediante desarrollo web asistido por IA, automatización e infraestructura cloud. La ejecución demandó aproximadamente **30 horas totales de trabajo del equipo**, distribuidas en dos jornadas intensivas.

La inversión tecnológica atribuible al proyecto fue estimada en **US$44**:

- ChatGPT/Codex: US$21 prorrateados.
- Gemini: US$6 prorrateados.
- OpenRouter: US$10 de consumo.
- VPS: US$7 correspondientes a un mes.
- GitHub, Vercel, Google Workspace y Composio: planes gratuitos.

> Los costos de las suscripciones fueron prorrateados según el porcentaje aproximado de uso destinado a LIVINN. La cifra representa una estimación del costo tecnológico del MVP y no incluye la valorización económica de las horas del equipo.
