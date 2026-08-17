# Auditoría de capturas para NotebookLM

Fecha: 2026-08-17  
Dictamen: **GO con material sanitizado**

## Alcance

Se recibieron siete capturas del flujo operativo de WhatsApp, Google Calendar, Google Sheets y Gmail. Los originales contienen datos personales y operativos que no deben publicarse.

## Decisión

- Los originales permanecen fuera de ambos repositorios.
- Se seleccionaron cinco imágenes suficientes para explicar el flujo.
- Dos capturas intermedias de WhatsApp se excluyeron por redundancia y alta densidad de datos personales.
- Se crearon derivados sanitizados mediante edición asistida y revisión visual.
- Una primera edición de Sheets fue rechazada porque alteró fechas y dejó un identificador residual; no fue incorporada al proyecto.

## Derivados aceptados

1. `01_whatsapp_disponibilidad_sanitizada.png`.
2. `02_whatsapp_confirmacion_sanitizada.png`.
3. `03_calendar_reservas_sanitizado.png`.
4. `04_sheets_reserva_sanitizada.png`.
5. `05_gmail_confirmacion_sanitizada.png`.

## Datos reemplazados

- Nombres de huéspedes.
- Teléfonos y correos personales.
- IDs de reserva y de eventos.
- Nombres de otras reservas.
- Etiquetas técnicas internas que no aportan al relato público.

Se conservaron el número de WhatsApp y el correo de contacto público de LIVINN.

## Integridad narrativa

Las imágenes conservan la secuencia documentada:

1. Consulta de disponibilidad en Calendar.
2. Presentación de alternativas y cotización.
3. Confirmación explícita del huésped.
4. Registro en Sheets.
5. Creación del evento en Calendar.
6. Envío de correo mediante Gmail.
7. Pago y confirmación definitiva bajo validación administrativa.

## Uso permitido

Los derivados pueden utilizarse en NotebookLM, el repositorio académico y la presentación. Deben identificarse como **capturas sanitizadas de una prueba controlada**. No deben describirse como registros literales ni utilizarse para demostrar la identidad de un huésped.

## Dictamen

**GO.** El conjunto aceptado explica el flujo sin publicar los datos personales visibles en los originales.
