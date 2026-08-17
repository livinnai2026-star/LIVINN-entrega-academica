# LIVINN — construcción de la experiencia web

## Propósito de esta fuente

Este documento describe exclusivamente la parte liderada por Iván dentro del MVP académico LIVINN. Su objetivo es servir como fuente para un Video Overview breve en NotebookLM. La automatización posterior de WhatsApp pertenece a Miguel y sólo debe mencionarse como el sistema que recibe la consulta preparada por la web.

## Problema y objetivo

LIVINN necesitaba una experiencia digital clara para presentar cuatro cabañas, ayudar al huésped a comparar opciones y transformar su interés en una consulta completa. La solución debía funcionar bien en móvil y desktop, ser accesible, rápida y fácil de publicar sin conectar directamente la landing a bases de datos privadas.

Iván coordinó la construcción de la experiencia web, la integración visual, el formulario de WhatsApp, las pruebas, los respaldos y la publicación.

## Construcción visual y técnica

- `LIVINN.dc.html` se mantuvo como fuente editable principal.
- `index.html` se preparó como entrada estática para Vercel.
- Ambos archivos se sincronizaron y se comprobaron mediante hash después de los cambios.
- Se integraron 23 posiciones visuales aprobadas entre hero, tarjetas, detalles de cuatro unidades y galería general.
- Las imágenes se optimizaron en WebP y variantes responsive para evitar cargar archivos master innecesarios.
- Se incorporaron metadatos de producción, canonical, Open Graph, favicon, identidad visual y ubicación correcta en Llano Grande, Durango.

La estética final combina bosque, madera, crema, carbón y terracota. La identidad del bot se adaptó cromáticamente para convivir con la web sin perder el símbolo original.

## Experiencia del huésped

El recorrido permite:

1. Comprender la propuesta desde el hero.
2. Comparar Arrayán, Mirador, Lodge del Lago y Refugio del Bosque.
3. Abrir el detalle de cada unidad.
4. Recorrer galerías mediante botones, gestos táctiles y flechas del teclado.
5. Ampliar imágenes con zoom y cerrar modales sin perder la sección de origen.
6. Consultar servicios, experiencias, ubicación y políticas.
7. Elegir unidad, fechas, huéspedes y comentario al final del recorrido.

En desktop se conserva una navegación superior. En móvil se utiliza una barra inferior fija con accesos principales, safe area para iPhone y controles táctiles cómodos.

## Consulta estructurada por WhatsApp

La web reúne y valida nombre, unidad, check-in, check-out, huéspedes y comentario. Luego construye un mensaje ordenado y abre WhatsApp con el número oficial. También existe un acceso independiente para soporte general.

La landing no consulta Google Calendar ni Google Sheets, no cobra y no confirma disponibilidad. Su responsabilidad termina al entregar una consulta estructurada a WhatsApp. Desde allí comienza la automatización implementada por Miguel.

## Accesibilidad y calidad

Se verificaron:

- anchos de 320, 390 y 768 píxeles, además de desktop;
- ausencia de scroll horizontal;
- navegación por teclado y foco visible;
- cierres con Escape y restauración de foco;
- textos alternativos, etiquetas y estados ARIA;
- reducción de movimiento;
- controles táctiles adecuados;
- rutas HTTP correctas y ausencia de recursos 404;
- consola sin errores ni advertencias.

La revisión incluyó inventarios visuales, pruebas responsive, auditorías de integración y cierres pre-deploy.

## Versionado, publicación y respaldo

GitHub conserva el código, la documentación y el historial. La rama principal representa la experiencia actual; además existen ramas y tags para conservar versiones anteriores y comparativas.

Vercel publica el sitio principal y mantiene una versión anterior online como respaldo visual. Esto permite mostrar evolución, recuperar decisiones y comparar la experiencia antes y después de las mejoras.

## Trabajo con inteligencia artificial

Se utilizaron agentes de IA para organizar inventarios, integrar componentes, revisar consistencia, proponer mejoras, crear recursos visuales y automatizar comprobaciones. Las decisiones de producto, selección visual, datos de producción y validación final fueron revisadas por el equipo.

La etapa audiovisual también forma parte del proyecto: se prepararon tres anuncios verticales, memorias sanitizadas, mapas conceptuales y fuentes para NotebookLM. La IA se utiliza como apoyo de producción; la entrega final requiere revisión humana.

## Resultado y aporte de Iván

El resultado es un MVP navegable que presenta el complejo, facilita la elección y prepara una consulta útil sin mezclar la experiencia pública con los sistemas internos.

El aporte de Iván abarca integración visual y funcional, experiencia responsive, accesibilidad, formulario de WhatsApp, pruebas, auditorías, control de versiones, respaldos, Vercel, documentación y producción audiovisual de la web.

## Límites que el video debe respetar

- No afirmar que la web reserva automáticamente.
- No afirmar que la landing se conecta directamente con Sheets o Calendar.
- No presentar pagos como confirmados automáticamente.
- No atribuir a Iván la infraestructura de Hermes, VPS o Composio.
- No mostrar rutas internas, credenciales, endpoints ni datos reales.
- Presentar el proyecto como MVP académico y trabajo de equipo.
