#!/bin/bash
# Lab step t04: a layer operation, headless. Load the sample,
# add a new transparent layer above it, select a band across
# the bottom of the image, fill the band in that layer with
# orange, remove the selection, flatten the stack and export
# a PNG. Verification then reads pixels back: the band must
# be the fill colour, the sky must be untouched.
cd "$(dirname "$0")/.." || exit 1

gimp -i -b '
(let* (
    (image (car (gimp-file-load RUN-NONINTERACTIVE
                    "images/hillside.png" "hillside")))
    (layer (car (gimp-layer-new image 640 480 RGBA-IMAGE
                    "survey band" 100 LAYER-MODE-NORMAL)))
  )
  (gimp-image-add-layer image layer -1)
  (gimp-image-select-rectangle image CHANNEL-OP-REPLACE
                                0 400 640 80)
  (gimp-context-set-foreground (list 255 90 40))
  (gimp-edit-fill layer FOREGROUND-FILL)
  (gimp-selection-none image)
  (gimp-image-flatten image)
  (gimp-file-save RUN-NONINTERACTIVE image
                  (car (gimp-image-get-active-layer image))
                  "images/hillside-band.png" "hillside-band")
  (gimp-message "layer added, band filled, flattened, exported")
  (gimp-image-delete image)
)' -b '(gimp-quit 0)'

echo "--- pixel read-back ---"
python3 - <<'PYEOF'
from PIL import Image
orig = Image.open("images/hillside.png").convert("RGB")
band = Image.open("images/hillside-band.png").convert("RGB")
print("band centre (320,440):", band.getpixel((320, 440)),
      "(expect the fill colour 255, 90, 40)")
print("sky (320,100): original", orig.getpixel((320, 100)),
      "-> banded", band.getpixel((320, 100)), "(expect identical)")
PYEOF
