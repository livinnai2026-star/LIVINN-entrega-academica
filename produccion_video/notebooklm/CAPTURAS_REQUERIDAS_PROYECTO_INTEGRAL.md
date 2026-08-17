# Capturas requeridas — video integral LIVINN

No hace falta capturar cada pantalla. Cinco pruebas sanitizadas de la automatización son suficientes para complementar el material de la web.

## Capturas que debe aportar Miguel

| Archivo sugerido | Contenido | Qué debe verse |
|---|---|---|
| `01_whatsapp_consulta_cotizacion.png` | Conversación de demostración | Fechas, personas, unidad y resumen/cotización del agente. |
| `02_calendar_consulta_disponibilidad.png` | Vista de Calendar antes de confirmar | Rango consultado y ausencia o presencia de ocupación, usando datos ficticios. |
| `03_sheets_reserva_registrada.png` | Registro posterior a la confirmación | Una fila ficticia recién creada y encabezados relevantes. |
| `04_calendar_evento_creado.png` | Resultado posterior al registro | Evento ficticio creado para la unidad y fechas de la prueba. |
| `05_gmail_confirmacion.png` | Confirmación operativa | Correo ficticio generado, sin direcciones personales reales. |

## Secuencia que deben demostrar

Disponibilidad en Calendar → cotización y confirmación explícita → registro en Sheets → evento en Calendar → correo de Gmail.

## Sanitización obligatoria

- Utilizar una persona ficticia, por ejemplo `Huésped Demo`.
- Ocultar teléfonos, correos personales, IDs de reserva reales y nombres de otros huéspedes.
- No mostrar barra de direcciones si contiene endpoints o identificadores privados.
- No mostrar credenciales, QR de vinculación, consola, configuración del VPS, rutas internas ni paneles de Composio.
- Cerrar notificaciones y pestañas ajenas al proyecto.
- Verificar cada imagen ampliada antes de compartirla o incorporarla al repositorio.

## Material ya disponible

- Mapa conceptual final sanitizado.
- Memorias técnicas de Iván y Miguel.
- Sitio público y versión anterior.
- Tres publicidades verticales.
- Video Overview de la parte web de Iván.

## Estado de recepción

Las cinco pruebas fueron recibidas, sanitizadas y guardadas en `notebooklm/capturas/`. Los originales con datos personales no se incorporan al repositorio.

- [x] WhatsApp: disponibilidad y alternativas.
- [x] WhatsApp: confirmación y registro.
- [x] Calendar: reservas y ocupación.
- [x] Sheets: registro estructurado.
- [x] Gmail: confirmación enviada.
