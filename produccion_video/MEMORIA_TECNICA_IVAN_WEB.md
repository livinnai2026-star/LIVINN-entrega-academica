# Memoria técnica — experiencia web, integración y publicación

Responsable principal: Iván  
Proyecto: LIVINN Cabañas  
Fecha de consolidación: 2026-08-16

## Objetivo

Construir una experiencia web clara y visual para presentar LIVINN, permitir que el huésped conozca las unidades, seleccione fechas y entregue una consulta completa al asistente de WhatsApp.

La solución debía funcionar como un sitio estático, ser usable en móvil y desktop, mantener las imágenes aprobadas y desplegarse de forma reproducible mediante GitHub y Vercel.

## Construcción del sitio

- Se utilizó `LIVINN.dc.html` como fuente editable principal.
- Se creó y mantuvo `index.html` como entrada estática de producción para Vercel.
- Ambos archivos se sincronizaron y verificaron después de los cambios funcionales.
- Se integraron 23 posiciones visuales aprobadas: hero, tarjetas, cuatro imágenes por unidad y galería general.
- Se generaron derivados WebP responsive sin modificar los PNG master.
- Se incorporaron metadatos de producción, canonical, Open Graph, favicon y ubicación correcta en Llano Grande, Durango.

## Experiencia del huésped

- Presentación del complejo y sus cuatro unidades.
- Tarifas claras y nota de validación administrativa para Lodge del Lago.
- Detalle de cada unidad mediante modal accesible.
- Galerías navegables con botones, gestos táctiles, teclado y zoom.
- Navegación superior en desktop y barra inferior fija en móvil.
- Mapa de Google con un encuadre legible y enlace a la ubicación.
- Políticas en una página independiente para no sobrecargar la landing.
- Footer reorganizado con contacto, redes demostrativas y enlaces informativos.
- Formulario de consulta situado al final del recorrido para que el huésped pueda conocer primero las unidades.

## Integración con WhatsApp

La web valida y reúne:

- Nombre.
- Unidad preferida.
- Check-in y check-out.
- Cantidad de huéspedes.
- Comentario opcional.

Después construye un mensaje estructurado y abre WhatsApp con el número oficial de producción. También existe un acceso separado para ayuda general.

La landing no consulta Google Calendar ni Google Sheets y no promete disponibilidad en tiempo real. Su responsabilidad termina cuando entrega la consulta estructurada al canal de WhatsApp; desde allí comienza la automatización implementada por Miguel.

## Responsive y accesibilidad

- Validación en anchos móviles de 320, 390 y 768 píxeles, además de desktop.
- Ausencia de scroll horizontal en los viewports auditados.
- Controles táctiles de tamaño adecuado y soporte para safe areas de iPhone.
- Navegación por teclado, foco visible, cierre con Escape y restauración de foco en modales y lightbox.
- Textos alternativos, jerarquía semántica, estados ARIA y respeto por reducción de movimiento.
- Formulario con etiquetas, límites de fechas y mensajes de validación anunciados.

## Calidad y verificación

- Pruebas mediante HTTP local, evitando validar con `file://`.
- Comprobación de rutas y recursos: respuestas 200 y ausencia de recursos 404.
- Revisión de consola sin errores ni advertencias.
- Auditorías visuales, responsive, accesibilidad, inventario de imágenes y cierre pre-deploy.
- Conservación de checkpoints, rama de comparación, rama de versión anterior y tag de respaldo.

## Control de versiones y publicación

- GitHub conserva el código, documentación, auditorías y evolución del proyecto.
- La rama `main` representa la experiencia actual.
- La rama `version-anterior-online` conserva la versión previa elegida como respaldo.
- El tag `v1-antes-de-mejoras` fija el punto anterior a las mejoras de experiencia.
- Vercel publica automáticamente la rama principal y mantiene una segunda versión online para comparación.

## Resultado

El resultado es un MVP navegable y documentado que conecta la captación visual con la atención automatizada sin mezclar responsabilidades: la web explica y estructura la intención del huésped; WhatsApp, Hermes y las aplicaciones de Google gestionan el proceso operativo posterior.

## Aporte de Iván

Iván coordinó la integración visual y funcional del sitio, experiencia responsive, accesibilidad, formulario de WhatsApp, pruebas, auditorías, control de versiones, respaldos y publicación en Vercel. También consolidó la documentación necesaria para explicar el proyecto y reproducir su despliegue.

