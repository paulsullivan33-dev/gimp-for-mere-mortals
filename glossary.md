# Glossary

**Alpha channel** — the part of a layer
that records transparency, pixel by
pixel. A layer without one cannot be
erased to see-through (chapter 15).

**Batch mode** — GIMP running without
its window, taking Script-Fu commands
from the command line: `gimp -i -b ...`
(chapter 10).

**Blend mode** — the rule by which a
layer's pixels combine with those below
it: Normal covers, Multiply darkens,
Screen lightens, and there are twenty
more (chapter 5).

**Canvas** — the rectangle an image
lives on, measured in pixels; also,
loosely, the visible working area
(chapter 2).

**Cast** — one colour laid over a whole
photograph by its lighting or its age:
indoor orange, shade blue, old-scan
yellow (chapter 7).

**Channel** — one component of colour
— red, green, or blue — which tools
like Levels can adjust separately
(chapter 7).

**CMYK** — the four inks of commercial
printing: cyan, magenta, yellow, black.
GIMP edits in RGB and does not edit
natively in CMYK (chapters 11, 14).

**Colour profile (ICC profile)** — a
small data file stating exactly which
colours a device's or space's numbers
mean; the label that makes colour
portable (chapter 11).

**Crop** — cutting the canvas down to
a chosen rectangle, discarding the
outside (chapters 4, 8).

**Curves** — a colour tool that maps
tones through a line you bend: more
control than Levels, more judgement
required (chapter 7).

**Drawable** — the thing a procedure
or tool draws on: usually the active
layer. Batch scripts name it early and
often (chapter 10).

**Export** — writing a finished copy
in a public format (JPEG, PNG, WebP),
flattened and final. Separate from
saving, deliberately (chapter 4).

**Feather** — softening a selection's
edge over a few pixels, so edits blend
instead of stopping at a hard line
(chapter 6).

**Flatten** — pressing the whole layer
stack into a single layer. Exporters
do it to their copy; your XCF should
keep its stack (chapter 5).

**Gamma** — in Levels, the middle
triangle: it lifts or lowers the
mid-tones while leaving the black and
white points where they were
(chapter 7).

**Heal tool** — paints with texture
borrowed from a chosen source and
blended in: scratches and blemishes
are its daily work (chapter 7).

**Histogram** — the graph in Levels
that counts pixels by brightness, dark
at the left, bright at the right; the
flat photograph's diagnosis at a
glance (chapter 7).

**JPEG** — the photograph format:
millions of colours, small files,
lossy compression, no transparency
(chapter 8).

**Layer** — one transparent sheet of
the image stack, edited separately,
seen in combination (chapters 2, 5).

**Layer mask** — a paintable fence on
a layer: black hides, white reveals,
grey reveals halfway — hiding instead
of deleting (chapters 2, 6).

**Levels** — the colour tool with
three triangles — black point, gamma,
white point — under a histogram; the
standard repair for a flat photograph
(chapter 7).

**Lossy / lossless** — compression
that discards something (JPEG) versus
compression that keeps every pixel
(PNG). Lossy files shrink more and
degrade a little at every re-save
(chapter 8).

**Opacity** — how solid a layer is:
100 is fully covering, 0 invisible,
and in between it ghosts over what is
below (chapter 5).

**Pixel** — one dot of the grid a
digital picture is made of, with one
colour. The atom of everything in this
guide (chapter 1).

**PNG** — the graphics format:
lossless, transparency-capable, and
heavy for photographs (chapter 8).

**Procedural database (PDB)** — the
catalogue of every operation GIMP can
be told to perform; Script-Fu calls
its procedures by name (chapter 10).

**RAW** — the unprocessed data from a
camera sensor, developed by a separate
converter before GIMP sees a picture
(chapters 1, 13).

**Scale** — changing an image's pixel
dimensions: down is safe, up invents
pixels and softness (chapter 8).

**Script-Fu** — GIMP's built-in
scripting language, a Scheme dialect,
used in batch mode and by the
program's own bundled scripts
(chapter 10).

**Selection** — the fence, shown as
marching ants, inside which edits
apply and outside which they do not
(chapters 2, 6).

**sRGB** — the standard colour space
of screens and the web, and the safe
default label for anything bound for
one (chapter 11).

**Text layer** — a layer whose words
stay editable as words — font, size,
spelling — until export flattens them
(chapter 9).

**XCF** — GIMP's own working format:
the layers, masks, and half-finished
state of an image, kept whole. This
guide's word for it is *the negative*
(chapters 1, 4, 5).
