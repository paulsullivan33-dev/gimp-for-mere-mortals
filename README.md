# GIMP for Mere Mortals

A digital photograph is a grid of
coloured dots, and editing one means
changing the dots: brightening the
darks, cutting out the stranger at the
edge, laying a title over the sky.
**GIMP** — the GNU Image Manipulation
Program, free since the 1990s — is the
program that does this with layers,
selections and masks instead of luck.
It repairs photographs, prepares
pictures for the web, builds posters
and covers out of pieces, and saves
your half-finished work in its own
**XCF** format so tomorrow's you can
pick up exactly where today's left
off.

This guide explains how that works:
the five ideas everything is built
from, your first complete edit, layers
and masks used properly, a photograph
repaired with levels, curves and the
healing tool, pictures resized and
exported for the web, text and simple
designs, and the same edits repeated
over a whole folder by GIMP's own
scripting. The limits are stated
plainly, including the honest ones:
pixels end, printers speak a different
colour language, and a healing brush
cannot tell restoration from forgery —
that distinction stays yours.

The rule that governs everything here
is stated in chapter 1 and repeated in
chapter 14: **work on a copy, keep the
original untouched — the saved XCF is
your negative.** The lab obeyed it the
tidy way: it edited no photograph at
all. Its sample picture is a landscape
drawn by a script, scratch included,
so every experiment could be run,
measured, and thrown away without
touching anything real.

The lab behind this guide ran the real
thing: **GIMP 2.10.36**, installed with
apt on a small Linux machine, driven
headless through its batch mode,
because the machine has no screen.
Against its drawn sample the lab
scaled a picture and saved the XCF,
then reopened the XCF and read its
dimensions back; applied chapter 7's
levels repair and measured the
brightness and spread before and
after; added a layer, filled part of
it, and read the pixels back to prove
the fill landed and the rest of the
picture did not move; rendered text
onto the picture and counted the
changed pixels; exported the same
picture as PNG and JPEG and weighed
both; and shrank a whole set of files
to thumbnails with one script.

What the lab could not do, it did not
fake. It had no display, so the
window itself — clicking through the
edits of chapters 4 to 9, the dialogs,
the Procedure Browser — is described
from the program's interface and
documentation and labelled as such
wherever it appears; the operations
underneath those chapters are the ones
verified headless. The Windows and
macOS installs are likewise described,
not demonstrated, and colour
management (chapter 11) is taught from
the concepts, there being no screen to
calibrate. `criteria.md` keeps the
full ledger of what was run and what
was only read.

## What this guide covers

- [**What GIMP is**](what-gimp-is.md) —
  the mental model: pixels, a program
  for changing them, the jobs it is
  hired for, and the rule about
  originals that the whole guide obeys
- [**The moving parts**](the-moving-parts.md) —
  the canvas, layers, selections,
  masks, and tools: the five nouns
  every procedure is built from
- [**Installing GIMP**](installing-gimp.md) —
  the package manager, the official
  downloads for Windows and macOS, and
  the one settings change that calms
  the first launch
- [**Your first edit**](your-first-edit.md) —
  the whole round trip once, slowly:
  copy, brighten, crop, save the XCF,
  export the result
- [**Layers, properly**](layers.md) —
  the stack managed on purpose:
  duplicates, names, opacity, blend
  modes, groups, and the point of no
  return called flattening
- [**Selections and masks**](selections-and-masks.md) —
  the fence and the painted fence:
  drawing selections that fit, and
  masks that hide instead of deleting
- [**Fixing a photograph**](fixing-a-photograph.md) —
  levels and the histogram, curves,
  colour casts, the healing tool, and
  where honest repair ends
- [**Resizing and exporting for the web**](resizing-and-exporting.md) —
  pixels are the size: scaling,
  cropping to a shape, the formats in
  one table, and the export dialog
  used deliberately
- [**Text and simple designs**](text-and-simple-designs.md) —
  words that stay words: text layers,
  a poster built start to finish, and
  the honest edges of design in an
  image editor
- [**Batch work with Script-Fu**](batch-work-with-script-fu.md) —
  GIMP with no window: the batch
  command, one picture, one repair, and
  a whole folder thumbnailed by a loop
- [**Colour management in plain language**](colour-management.md) —
  why screens and printers disagree,
  what a profile is, and the two
  habits (sRGB, keep the label) that
  keep surprises small
- [**Recipes**](recipes.md) — the
  grey-day rescue, the brightened sky,
  the scratch removed, a watermark, a
  banner, and two photographs melted
  into one
- [**The neighbours**](the-neighbours.md) —
  Krita the painter, Photoshop the
  standard, the simple editors, the
  RAW developers and librarians, and
  the drawing and layout tools
- [**Limits**](limits.md) — pixels
  end, colour has borders, one picture
  at a time, the honest-editing line,
  and the small print of versions
- [**Troubleshooting**](troubleshooting.md) —
  the dead brush, the eraser's
  squares, the batch run that never
  ends, the one that "succeeded" doing
  nothing, and a documented procedure
  that failed anyway
- [**Glossary**](glossary.md) — the
  terms, collected in one place

## What it doesn't cover

Painting and illustration from a
blank canvas — chapter 13 points to
Krita, whose heart is the brush.
Developing RAW files and cataloguing
a photo library are likewise the
neighbours' chapters, not this one.
Commercial print production gets an
honest account of the border
(chapters 11 and 14), not a pretence
that the border is not there. And
video is simply another country:
GIMP edits still pictures, one frame
at a time, and this guide does not
pretend otherwise.

## How to use this guide

Read chapter 1 for the model and the
rule, and chapter 2 before installing
anything — knowing the five parts by
name turns later confusion into a
named problem. Chapter 4 is the whole
craft in miniature; do it once with a
photograph you can afford to ruin
(a copy — there is no other kind in
this book) before the sharper tools
arrive. Chapters 5 and 6 are the
skills everything else spends; 7 and
8 are the daily work; 10 is the one
that gives you your evenings back.
Chapter 11 can be read any time a
print comes back wrong. The lab's
scripts live in `gimp-lab/scripts/`,
its transcripts in
`gimp-lab/transcripts/`, its sample
images in `gimp-lab/images/`, and its
notes are `examples/lab-notes.txt`.

---

## Part of the series

This guide is one of the [For Mere Mortals](https://paulsullivan33-dev.github.io/mere-mortals/) guides: plain-language guides to the tools programmers and makers use.

Related guides:

- [ExifTool for Mere Mortals](https://paulsullivan33-dev.github.io/exiftool-for-mere-mortals/)
- [OBS Studio for Mere Mortals](https://paulsullivan33-dev.github.io/obs-studio-for-mere-mortals/)
- [Audacity for Mere Mortals](https://paulsullivan33-dev.github.io/audacity-for-mere-mortals/)

## License

The writing in this guide is licensed under [CC BY 4.0](https://github.com/paulsullivan33-dev/gimp-for-mere-mortals/blob/main/LICENSE). Code examples and lab scripts are licensed under the [MIT License](https://github.com/paulsullivan33-dev/gimp-for-mere-mortals/blob/main/LICENSE-CODE).
