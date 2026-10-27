#!/bin/bash
# Lab step t07: the batch promise itself -- one script, many
# files. Every hillside*.png in images/ is loaded in turn,
# scaled to a width of 160 pixels, and saved into
# images/thumbs/ with a thumb- prefix. Verification lists
# the thumbnails and reads one back.
cd "$(dirname "$0")/.." || exit 1
mkdir -p images/thumbs

gimp -i -b '
(let* (
    (files (cadr (file-glob "images/hillside*.png" 0)))
    ; This build of Script-Fu hands the file-glob matches
    ; back as a plain list. The classic documentation says
    ; a vector. The lab follows what this build does, and
    ; chapter 15 tells the story. (No apostrophes may appear
    ; in these comment lines: the whole Scheme program is
    ; one single-quoted shell string, and a stray quote
    ; mark ends it early. The lab learned this the hard
    ; way -- the run reported success and did nothing.)
  )
  (for-each
    (lambda (path)
      (let* (
          (image    (car (gimp-file-load RUN-NONINTERACTIVE
                             path path)))
          (drawable  (car (gimp-image-get-active-layer image)))
          (w        (car (gimp-image-width image)))
          (h        (car (gimp-image-height image)))
          (new-h    (inexact->exact
                      (round (* h (/ 160 w)))))
          (basename (car (last (strbreakup path "/"))))
        )
        (gimp-image-scale image 160 new-h)
        (gimp-file-save RUN-NONINTERACTIVE image drawable
            (string-append "images/thumbs/thumb-" basename)
            "thumb")
        (gimp-message (string-append "thumbnailed " basename))
        (gimp-image-delete image)))
    files)
)' -b '(gimp-quit 0)'

echo "--- thumbnails written ---"
python3 - <<'PYEOF'
from PIL import Image
import glob, os
for path in sorted(glob.glob("images/thumbs/thumb-*.png")):
    im = Image.open(path)
    print(f"{os.path.basename(path)}: {im.size[0]}x{im.size[1]}, "
          f"{os.path.getsize(path)} bytes")
PYEOF
