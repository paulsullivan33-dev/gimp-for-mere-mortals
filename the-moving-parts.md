# The Moving Parts

By the end of this chapter you will be
able to name the five ideas every GIMP
procedure is built from — the canvas,
layers, selections, masks, and tools —
and say which one a given job needs.
Nothing here requires the program to be
open yet. These are the nouns; the rest
of the guide is verbs.

## The canvas and the image

An **image** in GIMP is the whole working
document: everything you see, plus
everything stacked out of sight. The
**canvas** is the rectangle the image
lives on, measured in pixels — a photo
from a phone might be 4000 pixels wide
and 3000 tall. Every pixel has a colour,
and the grid of pixels across the whole
canvas is what gets saved when you
export.

A useful habit, learned early: an
image's size in pixels is its real size.
"Inches" and "centimetres" on screen are
a polite fiction until printing enters
the story (chapter 11 touches that, in
plain language). When chapter 8 resizes
a picture for the web, it is the pixel
count that changes.

## Layers: sheets of glass

A **layer** is one sheet of the image.
Picture the image as a stack of
transparent sheets, like the acetate
pages in an old schoolbook diagram. The
bottom sheet might hold a photograph.
The next sheet holds nothing but a
title in text. A third holds a red
circle you drew. What you see — and
what an export saves — is the stack
looked at from above, all sheets
combined.

Layers are the single most useful idea
in the program, and chapter 5 gives
them a chapter of their own. For now,
four facts carry most of the weight:

- **Order matters.** A higher sheet
  covers what is below it, where it has
  anything drawn.
- **Transparency is real.** A layer can
  be empty in places — that is what the
  grey checkerboard pattern means — and
  the layers below show through the
  gaps.
- **Each layer is edited separately.**
  You can move, brighten, or delete the
  title without touching the photograph
  under it.
- **The stack can be saved.** GIMP's
  XCF format keeps the sheets separate.
  Exporting to JPEG or PNG presses the
  stack flat into one sheet — which is
  why chapter 1's rule keeps the XCF as
  your negative.

## Selections: the fence

A **selection** is a fence drawn on the
current layer. Edits, paints, and
deletions apply *inside* the fence and
leave the rest alone. The fence appears
as a moving dashed line — the "marching
ants" — and it can be a tidy rectangle,
an oval, a shape you drew freehand, or
every pixel of one colour.

The idea to hold onto: most "how do I
change just *this* part?" questions are
selection questions. Chapter 6 is
devoted to drawing good fences and to
the gentler tool that refines them.

## Masks: the fence, painted

A **layer mask** is a fence you paint
instead of draw. Attach a mask to a
layer, and painting black on the mask
hides that part of the layer; painting
white reveals it; grey reveals it
halfway. Nothing is deleted — the layer
is still whole underneath, and painting
white again brings any part back.

Masks are how careful work is done:
cutting a person out of one photograph
and into another, fading one picture
into the next, fixing a sky without
touching the ground. They feel advanced
for exactly one afternoon, and chapter 6
takes that afternoon slowly.

## Tools: what your hand is doing

The **toolbox** is the strip of icons,
usually at the left of the window. One
tool is active at a time, and the active
tool decides what a click on the canvas
does. The cast, in the order this guide
meets them:

- **Move** — slide a layer or a
  selection around.
- **Rectangle and Ellipse Select** —
  draw fences in those shapes.
- **Free Select (the lasso)** — draw a
  fence by hand; **Fuzzy Select** (the
  magic wand) fences everything of a
  similar colour with one click.
- **Crop** — cut the canvas down to the
  part you want to keep.
- **Paintbrush and Pencil** — lay colour
  down, soft edge and hard edge
  respectively; the **Eraser** takes it
  away again, down to transparency.
- **Clone and Heal** — copy pixels from
  one place to another: clone copies
  them exactly, heal blends them in.
  Chapter 7 uses heal to remove a
  scratch and a stray object.
- **Text** — click, type, get a text
  layer (chapter 9).
- **Colour tools are not tools.** This
  trips every beginner: brightness,
  levels, and curves live in the
  **Colors** menu, not the toolbox,
  because they adjust what is already
  there rather than painting something
  new. Chapter 7 lives in that menu.

Below the toolbox, the active tool's
options appear — brush size, opacity,
and the like. When a tool behaves
strangely, the answer is almost always
hiding in those options, and chapter 15
starts there.

## The rest of the window

Three more parts earn their names.
**Dialogs** are the panels — Layers,
Brushes, and friends — that can be
docked around the canvas or floated;
the Layers dialog is the one you will
live in. The **image window** holds the
canvas and, at its top, the menus this
guide names: File, Edit, Select, View,
Image, Layer, Colors, Tools, Filters.
And the **status bar** under the canvas
quietly reports the zoom level and the
size of what you are doing — worth a
glance before any export.

That is the whole machine: a canvas of
pixels, a stack of transparent sheets,
a fence, a painted fence, and a hand
that holds one tool at a time. Chapter
3 installs it.
