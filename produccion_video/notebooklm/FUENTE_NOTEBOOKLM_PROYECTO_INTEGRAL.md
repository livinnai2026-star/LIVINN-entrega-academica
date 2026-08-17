# LIVINN — caso de estudio del MVP integral

## Propósito

Esta fuente describe el proyecto completo de LIVINN para producir un video explicativo académico de 3 a 4 minutos. Debe presentar de forma equilibrada la experiencia web desarrollada por Iván y la automatización operativa desarrollada por Miguel, sin atribuir funciones al componente equivocado ni exponer información privada.

## Problema y solución

Un complejo de cabañas necesita mostrar sus unidades, ordenar las consultas y transformar el interés del huésped en una operación administrable. LIVINN resuelve ese recorrido mediante dos sistemas separados pero conectados:

1. Una web pública, visual y responsive que ayuda a elegir y prepara una consulta completa.
2. Un asistente de WhatsApp que reúne datos, consulta disponibilidad y coordina las aplicaciones operativas autorizadas.

El control humano se conserva para pagos, excepciones y validaciones administrativas.

## Experiencia web — aporte de Iván

Iván coordinó la integración visual y funcional del sitio, el recorrido del huésped, las pruebas, el versionado y la publicación.

- Se mantuvo `LIVINN.dc.html` como fuente editable y `index.html` como entrada estática para Vercel.
- Se integraron 23 posiciones visuales aprobadas entre hero, tarjetas, cuatro unidades y galería.
- Se produjeron variantes WebP responsive y se conservaron los archivos master.
- Se incorporaron metadatos, ubicación correcta, mapa, políticas, favicon e identidad visual.
- El sitio presenta Arrayán, Mirador, Lodge del Lago y Refugio del Bosque con tarifas y servicios.
- Los detalles y galerías admiten botones, gestos táctiles, teclado, zoom y cierre sin perder la sección de origen.
- Desktop conserva navegación superior; móvil utiliza una barra inferior fija con safe area y controles táctiles cómodos.
- La experiencia fue probada en 320, 390, 768 y desktop, sin scroll horizontal, recursos 404 ni errores de consola.
- Se revisaron foco, teclado, Escape, textos alternativos, etiquetas, estados ARIA y reducción de movimiento.

La web reúne nombre, unidad, check-in, check-out, huéspedes y comentario. Valida esos datos, construye un mensaje ordenado y abre WhatsApp con el número oficial. También ofrece un acceso separado para ayuda general.

La landing no consulta Calendar o Sheets, no cobra y no confirma una reserva. Su responsabilidad termina cuando entrega la consulta estructurada a WhatsApp.

## Automatización operativa — aporte de Miguel

Miguel diseñó y desplegó la capa de atención posterior a WhatsApp.

- Infraestructura en VPS con contenedor Docker administrado mediante Dokploy.
- Hermes Agent como runtime del asistente.
- WhatsApp vinculado como canal activo.
- Modelo de lenguaje servido a través de OpenRouter.
- MCP remoto de Composio para las aplicaciones autorizadas.
- Integraciones operativas con Google Calendar, Google Sheets y Gmail.
- Reglas de privacidad, preguntas aclaratorias y escalamiento humano.

## Flujo confirmado de reserva

1. El huésped inicia la consulta desde la web o directamente por WhatsApp.
2. Hermes reúne fechas exactas, adultos, niños y unidad de interés.
3. Consulta Google Calendar para verificar disponibilidad.
4. Presenta cotización y resumen.
5. Espera una confirmación explícita del huésped.
6. Registra primero la reserva en Google Sheets.
7. Crea después el evento en Google Calendar.
8. Envía la confirmación mediante Gmail.
9. El pago y las excepciones permanecen pendientes de validación administrativa.

El sistema no debe presentarse como una garantía absoluta contra solicitudes simultáneas, porque no se ha documentado un bloqueo transaccional o atómico. Tampoco debe mostrarse información real de huéspedes.

## Control de versiones y publicación

GitHub conserva código, documentación, auditorías y respaldos. La rama principal representa la experiencia actual; una rama y un tag conservan la versión anterior. Vercel publica la rama principal y mantiene una versión previa online para comparación.

Existe además un repositorio académico sanitizado con el sitio, memorias técnicas, mapas conceptuales, auditorías y recursos audiovisuales. No incluye credenciales, rutas internas, endpoints privados, sesiones ni datos de huéspedes.

## Trabajo con inteligencia artificial y comunicación

El equipo utilizó agentes de IA para organizar inventarios, integrar componentes, comprobar consistencia, crear recursos visuales y preparar documentación. Las decisiones de producto, los datos de producción y la validación final fueron revisados por personas.

La comunicación del proyecto incluye tres publicidades verticales, mapas técnicos sanitizados y videos explicativos producidos con NotebookLM. Las grabaciones reales de la web y de la automatización sirven como evidencia; la IA apoya el relato, pero no sustituye la revisión técnica.

## Resultado

LIVINN convierte una propuesta turística en un recorrido digital completo: la web informa y estructura la intención; WhatsApp conecta al huésped con Hermes; las integraciones autorizadas ayudan a verificar y registrar; la administración conserva el control final.

El valor del proyecto no es sólo una landing ni sólo un bot, sino la separación clara de responsabilidades entre experiencia pública, canal de atención, automatización y control humano.

## Límites obligatorios del video

- No afirmar que la web reserva, cobra o consulta Google directamente.
- No alterar el orden confirmado: disponibilidad en Calendar, confirmación del huésped, registro en Sheets, evento en Calendar y correo por Gmail.
- No afirmar disponibilidad en tiempo real garantizada ni protección absoluta contra concurrencia.
- No mostrar credenciales, rutas internas, endpoints, IDs o datos reales.
- Atribuir claramente la experiencia web a Iván y la automatización a Miguel.
- Presentar LIVINN como MVP académico funcional y trabajo de equipo.

