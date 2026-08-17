# IMAGE_MANIFEST — LIVINN Cabañas

Estado: **INTEGRACIÓN FINAL COMPLETA**  
Fuente editable: `LIVINN.dc.html`  
Entrada de producción: `index.html`

Los 23 espacios visuales están integrados con rutas relativas, textos alternativos definitivos, proporción estable y estado `FINAL_INTEGRADO`. No se consumen PNG master, Base64, URLs externas ni rutas absolutas. Las cuatro reutilizaciones de galería apuntan al archivo original y no generan duplicados físicos.

| image_id | unidad / sección | rol | ruta definitiva | alt definitivo | ubicación | reutilización | estado |
|---|---|---|---|---|---|---|---|
| `hero-livinn` | Portada | portada | `img/hero/hero-livinn.webp` | Cabaña LIVINN iluminada entre pinos nevados al atardecer | Hero | Fuente única | FINAL_INTEGRADO |
| `arrayan-exterior` | Arrayán | exterior | `img/unidades/arrayan/exterior.webp` | Cabaña Arrayán de madera entre pinos nevados | Tarjeta + modal | Mismo archivo en ambas vistas | FINAL_INTEGRADO |
| `arrayan-dormitorio` | Arrayán | dormitorio | `img/unidades/arrayan/dormitorio.webp` | Dormitorio cálido de la Cabaña Arrayán con chimenea | Modal | Reutilizado por `galeria-interior` | FINAL_INTEGRADO |
| `arrayan-cocina` | Arrayán | cocina | `img/unidades/arrayan/cocina.webp` | Kitchenette de madera equipada de la Cabaña Arrayán | Modal | No | FINAL_INTEGRADO |
| `arrayan-bano` | Arrayán | baño | `img/unidades/arrayan/bano.webp` | Baño completo de madera y piedra de la Cabaña Arrayán | Modal | No | FINAL_INTEGRADO |
| `mirador-exterior` | Mirador | exterior | `img/unidades/mirador/exterior.webp` | Cabaña Mirador con terraza elevada y vista a la sierra | Tarjeta + modal | Reutilizado por `galeria-exterior` | FINAL_INTEGRADO |
| `mirador-living` | Mirador | living | `img/unidades/mirador/living.webp` | Living panorámico de la Cabaña Mirador con sofá cama | Modal | No | FINAL_INTEGRADO |
| `mirador-dormitorio` | Mirador | dormitorio | `img/unidades/mirador/dormitorio.webp` | Dormitorio luminoso de la Cabaña Mirador | Modal | No | FINAL_INTEGRADO |
| `mirador-terraza` | Mirador | terraza | `img/unidades/mirador/terraza.webp` | Terraza de la Cabaña Mirador abierta a la sierra | Modal | No | FINAL_INTEGRADO |
| `lago-exterior` | Lodge del Lago | exterior | `img/unidades/lago/exterior.webp` | Lodge del Lago de madera junto al agua | Tarjeta + modal | Mismo archivo en ambas vistas | FINAL_INTEGRADO |
| `lago-living-comedor` | Lodge del Lago | living-comedor | `img/unidades/lago/living-comedor.webp` | Living-comedor familiar del Lodge del Lago frente al agua | Modal | No | FINAL_INTEGRADO |
| `lago-dormitorio` | Lodge del Lago | dormitorio | `img/unidades/lago/dormitorio.webp` | Dormitorio del Lodge del Lago con vista al agua | Modal | No | FINAL_INTEGRADO |
| `lago-deck` | Lodge del Lago | deck | `img/unidades/lago/deck.webp` | Deck exterior del Lodge del Lago frente al agua | Modal | Reutilizado por `galeria-deck` | FINAL_INTEGRADO |
| `refugio-exterior` | Refugio del Bosque | exterior | `img/unidades/refugio/exterior.webp` | Refugio del Bosque de madera rodeado de pinos nevados | Tarjeta + modal | Mismo archivo en ambas vistas | FINAL_INTEGRADO |
| `refugio-living` | Refugio del Bosque | living | `img/unidades/refugio/living.webp` | Gran living del Refugio del Bosque con chimenea de piedra | Modal | No | FINAL_INTEGRADO |
| `refugio-dormitorio-grupal` | Refugio del Bosque | dormitorio-grupal | `img/unidades/refugio/dormitorio-grupal.webp` | Dormitorio grupal del Refugio del Bosque con dos cuchetas | Modal | No | FINAL_INTEGRADO |
| `refugio-fogatero-tina` | Refugio del Bosque | fogatero-tina | `img/unidades/refugio/fogatero-tina.webp` | Fogatero y tina exterior del Refugio del Bosque | Modal | Reutilizado por `galeria-parrilla` | FINAL_INTEGRADO |
| `galeria-interior` | Galería | interior | `img/unidades/arrayan/dormitorio.webp` | Dormitorio cálido de madera con chimenea en LIVINN | Galería | Reutilización sin copia física | FINAL_INTEGRADO |
| `galeria-exterior` | Galería | exterior | `img/unidades/mirador/exterior.webp` | Cabaña Mirador con terraza y vista a la sierra | Galería | Reutilización sin copia física | FINAL_INTEGRADO |
| `galeria-deck` | Galería | deck | `img/unidades/lago/deck.webp` | Deck del Lodge del Lago frente al agua | Galería | Reutilización sin copia física | FINAL_INTEGRADO |
| `galeria-parrilla` | Galería | parrilla | `img/unidades/refugio/fogatero-tina.webp` | Fogatero y tina exterior del Refugio del Bosque | Galería | Reutilización sin copia física | FINAL_INTEGRADO |
| `galeria-bosque` | Galería | bosque | `img/entorno/bosque.webp` | Sendero entre pinos nevados en los alrededores de LIVINN | Galería | Archivo único de entorno | FINAL_INTEGRADO |
| `galeria-lago` | Galería | lago | `img/entorno/lago.webp` | Lago de montaña rodeado de bosque cerca de LIVINN | Galería | Archivo único de entorno | FINAL_INTEGRADO |

## Metadatos definitivos

| recurso | ruta | estado |
|---|---|---|
| Open Graph | `img/og-livinn.jpg` | DEFINITIVO_INTEGRADO |
| Favicon PNG | `img/favicon.png` | DEFINITIVO_INTEGRADO |

## Rendimiento responsive

Se crearon 54 derivados WebP no destructivos dentro de `img/responsive/`, referenciados mediante `srcset` y `sizes`. El hero dispone de 640 y 960 px; las 16 fotografías de unidad disponen de 480, 768 y 1200 px; bosque y lago disponen de 480 y 768 px. Los WebP aprobados y todos los PNG master permanecen intactos.

**Total de espacios visuales: 23** — 1 portada + 16 imágenes de unidades + 6 imágenes de galería.
