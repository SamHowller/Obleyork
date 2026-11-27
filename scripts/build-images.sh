#!/usr/bin/env bash
# Genera las imágenes optimizadas de img/ a partir de los originales en imagenes/.
# Requiere ImageMagick (magick). Uso: npm run images   (o: bash scripts/build-images.sh)
set -euo pipefail
cd "$(dirname "$0")/.."
SRC=imagenes
OUT=img
mkdir -p "$OUT"

# foto <archivo original> <nombre de salida sin extensión>
foto() { magick "$SRC/$1" -auto-orient -resize '900x1200>' -strip -quality 78 "$OUT/$2.webp"; echo "  $OUT/$2.webp"; }

echo "Productos:"
foto casado.png                  casado
foto mazamorra.jpeg              mazamorra
foto obleyork.jpeg               obleyork
foto fresas-crema.jpeg           fresas-crema
foto fresas-oreo.jpeg            fresas-oreo
foto solterita.jpeg              solterita
foto ensalada-fruta-regular.jpeg ensalada-fruta-regular
foto ensalaa-fruta-grande.jpeg   ensalada-fruta-grande
magick "$SRC/oblea-tradicional.png" -resize '1200x630>' -strip -quality 80 "$OUT/oblea-tradicional.webp"; echo "  $OUT/oblea-tradicional.webp"

echo "Redes sociales (vista previa 1200x630):"
magick "$SRC/2.png" -strip -quality 85 "$OUT/og-image.jpg"; echo "  $OUT/og-image.jpg"

echo "Logo e íconos:"
magick "$SRC/logo.png" -fuzz 8% -trim +repage -bordercolor "#F3DDC4" -border 40 -resize '600x600>' -strip -quality 85 "$OUT/logo.webp"
magick "$SRC/logo.png" -fuzz 8% -trim +repage -crop 540x385+160+0 +repage -gravity center -background "#F3DDC4" -extent 580x580 -resize 180x180 "$OUT/apple-touch-icon.png"
magick "$OUT/apple-touch-icon.png" -resize 64x64 "$OUT/favicon.png"
echo "  $OUT/logo.webp, $OUT/apple-touch-icon.png, $OUT/favicon.png"
