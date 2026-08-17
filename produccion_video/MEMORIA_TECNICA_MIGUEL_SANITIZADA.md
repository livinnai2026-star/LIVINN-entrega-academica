# Memoria técnica sanitizada — automatización de reservas

Responsable principal: Miguel  
Proyecto: LIVINN Cabañas  
Fecha de consolidación: 2026-08-16

Este documento deriva de la memoria técnica entregada por Miguel. Fue corregido y sanitizado para una presentación académica y para su incorporación a un repositorio público. Se omitieron rutas internas, endpoints, permisos, comandos de mantenimiento, identificadores y detalles de recuperación de sesiones.

## Objetivo

Implementar un asistente independiente para atender consultas por WhatsApp, reunir los datos necesarios, consultar disponibilidad, cotizar y registrar una solicitud de reserva de forma ordenada.

El asistente complementa la web de LIVINN. La landing no accede directamente a Google Calendar, Google Sheets ni Gmail: prepara la consulta del huésped y abre WhatsApp, donde comienza la automatización operativa.

## Arquitectura general

- Infraestructura: VPS con despliegue en contenedor Docker y orquestación mediante Dokploy.
- Runtime del agente: Hermes Agent.
- Canal activo: WhatsApp vinculado mediante QR.
- Motor de lenguaje: modelo servido a través de OpenRouter.
- Integraciones: MCP remoto de Composio.
- Aplicaciones autorizadas: Google Calendar, Google Sheets y Gmail de LIVINN.
- Persistencia: configuración, memoria y sesiones se conservan en almacenamiento del servidor, sin publicar su estructura interna.

## Flujo operativo confirmado

1. El huésped inicia una consulta desde la web o directamente por WhatsApp.
2. Hermes solicita fechas exactas, cantidad de adultos y niños y unidad de interés.
3. El agente consulta Google Calendar para verificar disponibilidad.
4. Presenta una cotización y un resumen de los datos reunidos.
5. El huésped confirma expresamente la información.
6. El agente crea el evento en Calendar, registra la operación en Google Sheets y envía una confirmación mediante Gmail.
7. El pago y cualquier condición administrativa quedan pendientes de verificación humana.

Google Calendar funciona como referencia operativa de disponibilidad. Google Sheets conserva el registro estructurado de la reserva y Gmail comunica la confirmación. La memoria aportada no documenta un bloqueo transaccional o atómico contra concurrencia; por ello, no debe afirmarse públicamente que el sistema elimina por completo el riesgo de solicitudes simultáneas.

## Datos de la reserva

El registro operativo contempla, entre otros:

- Identificador único de reserva.
- Fecha de registro y canal.
- Nombre y datos de contacto.
- Unidad, check-in, check-out y cantidad de noches.
- Adultos, niños y total de personas.
- Tarifa, extras autorizados y total cotizado.
- Estado de pago y estado de reserva.
- Referencia al evento de Calendar y notas operativas.

Las altas usan un identificador de reserva como clave. Las modificaciones autorizadas actualizan ese registro; no se utiliza el nombre del huésped como identificador único y no se automatiza la eliminación de filas.

## Reglas comerciales utilizadas

| Unidad | Tarifa base comunicada |
|---|---:|
| Cabaña Arrayán | $900 MXN por noche |
| Cabaña Mirador | $1,500 MXN por noche |
| Lodge del Lago | Desde $3,000 MXN por noche, sujeto a validación administrativa |
| Refugio del Bosque | $4,000 MXN por noche |

La ubicación comunicada por el proyecto es Carretera Durango–Mazatlán km 80, Llano Grande, Durango.

## Alcance y seguridad

- El agente pide fechas exactas cuando una expresión es ambigua.
- No revela reservas, pagos ni información de otros huéspedes.
- No confirma pagos a partir de una afirmación o captura del cliente.
- Cancelaciones, reembolsos, reprogramaciones, descuentos y excepciones se escalan al equipo humano.
- Se redujeron las herramientas disponibles al mínimo necesario para atención, memoria, preguntas aclaratorias e integraciones autorizadas.
- Las redes sociales y cuentas personales no forman parte de las conexiones del agente.

## Límites que deben explicarse en el video

- La web y la automatización son sistemas separados conectados por la conversación de WhatsApp.
- El sitio no realiza pagos ni confirma disponibilidad automáticamente.
- El cliente confirma sus datos antes de crear los registros operativos.
- El pago permanece pendiente hasta la validación administrativa.
- La demostración debe utilizar datos ficticios y ocultar credenciales, paneles internos e información de huéspedes reales.

## Aporte de Miguel

Miguel diseñó y desplegó la capa operativa: infraestructura en VPS, contenedor del agente, conexión de WhatsApp, configuración de Hermes, integración MCP mediante Composio y flujo con Calendar, Sheets y Gmail. También definió las reglas de privacidad, escalamiento y verificación administrativa del asistente.

