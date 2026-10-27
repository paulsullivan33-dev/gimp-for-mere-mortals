#!/bin/bash
# Lab step t02: open the sample image in batch mode, scale it
# from 640x480 to 320x240, export the result as a PNG, and
# save the working file as XCF. Then reload the XCF and read
# its dimensions back, as the round-trip check.
cd "$(dirname "$0")/.." || exit 1

gimp -i -b '
(let* (
    (image    (car (gimp-file-load RUN-NONINTERACTIVE
                    "images/hillside.png" "hillside")))
    (drawable (car (gimp-image-get-active-layer image)))
  )
  (gimp-message (string-append "loaded width="
                (number->string (car (gimp-image-width image)))
                " height="
                (number->string (car (gimp-image-height image)))))
  (gimp-image-scale image 320 240)
  (gimp-file-save RUN-NONINTERACTIVE image drawable
                  "images/hillside-small.png" "hillside-small")
  (gimp-xcf-save RUN-NONINTERACTIVE image drawable
                 "images/hillside.xcf" "hillside")
  (gimp-message "scaled, exported PNG, saved XCF")
  (gimp-image-delete image)
)' -b '(gimp-quit 0)'

echo "--- reload the saved XCF and read it back ---"
gimp -i -b '
(let* (
    (image (car (gimp-file-load RUN-NONINTERACTIVE
                    "images/hillside.xcf" "hillside")))
  )
  (gimp-message (string-append "xcf width="
                (number->string (car (gimp-image-width image)))
                " height="
                (number->string (car (gimp-image-height image)))
                " layers="
                (number->string
                  (car (gimp-image-get-layers image)))))
  (gimp-image-delete image)
)' -b '(gimp-quit 0)'
