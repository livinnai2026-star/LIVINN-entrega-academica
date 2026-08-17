# Ajuste de identidad y entrega audiovisual

Fecha: 2026-08-17

## Alcance

Se unificó el favicon del sitio con la identidad visual vigente y se simplificó la entrega audiovisual pública para conservar un único video explicativo integral.

## Identidad visual

- Se creó `img/brand/livinn-icon-web.png` como fuente maestra cuadrada para los iconos web.
- La variante usa fondo crema, símbolo carbón y nodos terracota, sin azul ni turquesa.
- Se regeneraron `img/favicon.png`, `img/apple-touch-icon.png` e `img/icon-192.png` mediante reducción Lanczos desde la fuente maestra.
- `index.html`, `LIVINN.dc.html` y `politicas.html` incorporan una versión de caché `v=20260817` para evitar que los navegadores sigan mostrando el favicon anterior.
- La marca azul original se conserva como material fuente y como referencia de la identidad del bot; no fue sobrescrita.

## Entrega audiovisual

- Se retiró del repositorio público `LIVINN_Caso_MVP_Web_Ivan.mp4`.
- Antes de retirarlo, se verificó por SHA-256 una copia local fuera de los repositorios públicos.
- No se incorporó el capítulo original de Miguel porque contiene una lámina técnica no sanitizada con rutas, nombres de archivos internos, endpoint y datos de configuración.
- `LIVINN_Caso_de_Estudio_Integral.mp4` queda como único video explicativo oficial de la entrega.
- Las tres publicidades verticales y el video integral no fueron modificados.

## Criterio de publicación

Los capítulos individuales sólo se agregarán en una etapa posterior si ambos se regeneran con información sanitizada y una presentación equilibrada. Hasta entonces, el video integral expresa mejor la autoría compartida y reduce la exposición accidental de información técnica interna.

## Verificaciones requeridas

| Verificación | Resultado |
| --- | --- |
| Equivalencia exacta entre `index.html` y `LIVINN.dc.html` | PASS |
| Iconos PNG válidos de 64, 180 y 192 píxeles | PASS |
| Video individual ausente en ambos repositorios | PASS |
| Enlaces públicos al video individual eliminados | PASS |
| Respaldo local presente y verificado por SHA-256 | PASS |
| Home, políticas, iconos y video integral por HTTP local | PASS — HTTP 200 |
| `git diff --check` | PASS |

La verificación del sitio publicado y de las ramas remotas se completa después del push.
