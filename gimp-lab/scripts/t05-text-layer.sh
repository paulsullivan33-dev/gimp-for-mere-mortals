#!/bin/bash
# Lab step t05: text on the picture, headless. Load the
# sample, set the foreground to white, and render a line of
# text across the lower part of the image, then flatten and
# export. Verification counts how many pixels in the text's
# strip differ from the original: the words must have landed
# somewhere.
#
# A lab discovery lives here: this build's Script-Fu rejects
# gimp-text-layer-new in its documented forms ("invalid type
# for argument 2"), so the lab uses gimp-text-fontname --
# the procedure GIMP's own bundled scripts (font-map.scm)
# call for the same job. Chapter 15 tells the story.
cd "$(dirname "$0")/.." || exit 1

gimp -i -b '
(let* (
    (image (car (gimp-file-load RUN-NONINTERACTIVE
                    "images/hillside.png" "hillside")))
  )
  (gimp-context-set-foreground (list 255 255 255))
  (gimp-text-fontname image -1 18 428
                      "HILLSIDE, FROM THE LANE"
                      0 TRUE 28 PIXELS "Sans")
  (gimp-image-flatten image)
  (gimp-file-save RUN-NONINTERACTIVE image
                  (car (gimp-image-get-active-layer image))
                  "images/hillside-text.png" "hillside-text")
  (gimp-message "text rendered, flattened, exported")
  (gimp-image-delete image)
)' -b '(gimp-quit 0)'

echo "--- pixel read-back over the text strip ---"
python3 - <<'PYEOF'
from PIL import Image
orig = Image.open("images/hillside.png").convert("RGB")
text = Image.open("images/hillside-text.png").convert("RGB")
changed = 0
for y in range(420, 480):
    for x in range(0, 480):
        if orig.getpixel((x, y)) != text.getpixel((x, y)):
            changed += 1
print(f"pixels changed in the text strip: {changed}")
print("(a few thousand = the letters are really there)")
PYEOF
