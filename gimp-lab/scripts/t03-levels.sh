#!/bin/bash
# Lab step t03: the chapter 7 repair, headless. Load a fresh
# copy of the sample (the PPM, so brightness can be measured
# exactly afterwards), apply Levels with a black point of 40,
# a white point of 210 and a gamma of 1.2 on the value
# channel, and export the result as a PPM.
cd "$(dirname "$0")/.." || exit 1

gimp -i -b '
(let* (
    (image    (car (gimp-file-load RUN-NONINTERACTIVE
                    "images/hillside.ppm" "hillside")))
    (drawable (car (gimp-image-get-active-layer image)))
  )
  (gimp-levels drawable HISTOGRAM-VALUE 40 210 1.2 0 255)
  (gimp-file-save RUN-NONINTERACTIVE image drawable
                  "images/hillside-levels.ppm" "hillside-levels")
  (gimp-message "levels applied: black 40, white 210, gamma 1.2")
  (gimp-image-delete image)
)' -b '(gimp-quit 0)'

echo "--- measured brightness and spread, original vs levels ---"
python3 - <<'PYEOF'
from PIL import Image
import statistics
for name in ("hillside.ppm", "hillside-levels.ppm"):
    im = Image.open("images/" + name).convert("RGB")
    vals = [sum(p) / 3.0 for p in im.getdata()]
    mean = sum(vals) / len(vals)
    sd = statistics.pstdev(vals)
    print(f"{name}: mean brightness {mean:.1f}, spread (sd) {sd:.1f}")
PYEOF
