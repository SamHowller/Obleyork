# OBLEYORK – sitio web

- `index.html` → la página (ábrela en el navegador o súbela a Netlify / Cloudflare Pages / GitHub Pages).
- `imagenes/` → fotos originales, nombradas por producto (no se publican).
- `img/` → fotos optimizadas en WebP que usa la web. Se generan desde `imagenes/` con:

```bash
npm run images   # requiere ImageMagick
```

  Si agregas o cambias una foto, añádela en `scripts/build-images.sh` y en el `CONFIG` de `index.html`.
- `css/styles.css` → Tailwind compilado. **Si cambias clases de Tailwind en `index.html`, regenera el CSS:**

```bash
npm install      # solo la primera vez
npm run build    # genera css/styles.css
```

## Qué editar
Todo el catálogo está en el bloque `CONFIG` dentro de `index.html`:
precios, productos, fotos, extras (`BOWL_EXTRAS`), constructor (`BUILDER`), horario, galería y reseñas.
Los textos de la interfaz en español/inglés están en `I18N`.

## Antes de publicar
- Revisa los precios marcados con ⚠️ (Mini, Doble, toppings y extras son de ejemplo).
- Usa solo reseñas reales.
- Cuando tengas dominio, pon URLs absolutas en `og:image` (en el `<head>`) para que la vista previa en WhatsApp/Instagram funcione.
- Opcional: activa Plausible descomentando el script del `<head>`.

Al subirla, publica solo `index.html`, `css/` e `img/`. El resto (`imagenes/`, `node_modules/`, `_respaldo/`, el `.zip`) no hace falta.
