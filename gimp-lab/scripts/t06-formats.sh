#!/bin/bash
# Lab step t06: chapter 8's format table, measured. Export
# the same loaded image from GIMP two ways -- PNG and JPEG,
# both through gimp-file-save at the plug-ins' default
# settings -- and compare the sizes with the sample itself.
#
# A note on what the numbers show: the sample is flat-shaded
# drawn artwork, which is PNG's home ground (hard edges,
# few colours), so PNG wins this particular comparison.
# That is the format table working as advertised, not
# breaking: a photograph reverses it. Script-Fu in this
# build cannot set the JPEG quality directly (the named
# file-jpeg-export procedure is not bound in batch mode),
# so the quality slider itself is taught in chapter 8 from
# the interface and not measured here.
cd "$(dirname "$0")/.." || exit 1

gimp -i -b '
(let* (
    (image    (car (gimp-file-load RUN-NONINTERACTIVE
                    "images/hillside.png" "hillside")))
    (drawable (car (gimp-image-get-active-layer image)))
  )
  (gimp-file-save RUN-NONINTERACTIVE image drawable
                  "images/hillside-gimp.png" "hillside-gimp")
  (gimp-file-save RUN-NONINTERACTIVE image drawable
                  "images/hillside-gimp.jpg" "hillside-gimp")
  (gimp-message "sample exported as PNG and as JPEG")
  (gimp-image-delete image)
)' -b '(gimp-quit 0)'

echo "--- file sizes, same picture, three encodings ---"
python3 - <<'PYEOF'
import os
for name in ("hillside.png", "hillside-gimp.png",
             "hillside-gimp.jpg", "hillside.ppm"):
    print(f"{name}: {os.path.getsize('images/' + name)} bytes")
PYEOF
