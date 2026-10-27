# Layers, Properly

By the end of this chapter you will be
able to build an image out of separate
sheets and manage the stack on purpose:
adding, naming, reordering, grouping and
merging layers, adjusting how strongly
each one shows, and knowing the two ways
a stack becomes flat — and when each is
allowed. Chapter 2 introduced layers as
sheets of glass; this chapter is the
workshop practice.

## The Layers dialog is home

The **Layers dialog** lists the stack
from top to bottom, each layer as a row
with a small thumbnail, an eye icon, and
a name. The highlighted row is the
**active layer** — the one your edits
land on. Half of all beginner confusion
in GIMP is editing in good faith on the
wrong layer, so build the reflex: before
any edit, glance at which row is
highlighted. Chapter 15 returns to this,
because everyone needs reminding.

The eye icon shows or hides a layer.
Hiding is the cheapest experiment there
is: duplicate a layer, edit the copy,
and click the eye off and on to compare
before and after without undoing
anything.

## Working habits that pay

- **Duplicate before you dare.** Right-
  click a layer and choose **Duplicate
  Layer** before any strong edit. The
  untouched copy underneath is your way
  back, better than undo because it
  survives saving and closing.
- **Name layers like you mean it.**
  Double-click a name and type what the
  layer *is*: `sky darkened`, `title`,
  `scratch removed`. A stack of `Copy of
  Copy of Background` is a debt your
  future self must pay.
- **New work gets a new layer.** Paint,
  text (chapter 9), pasted pieces — each
  on its own sheet, so each can be moved,
  adjusted, or thrown away without
  disturbing the rest. The **New Layer**
  button is at the bottom of the dialog;
  a transparent layer costs nothing.
- **Reorder by dragging.** What covers
  what is the stack order, nothing
  more. If the title vanished behind the
  photograph, the title's layer is below
  the photo's. Drag it up.

## Opacity and blend modes

Two controls at the top of the Layers
dialog govern how a layer meets the ones
below it.

**Opacity** is a volume knob: 100 is
fully solid, 0 is invisible, and in
between the layer ghosts over what is
below. A too-strong colour fix calms
down beautifully at 60 percent, and a
watermark (chapter 12) is just a text
layer turned down low.

**Blend modes** decide *how* the layer's
pixels combine with those below, beyond
simple covering. You need three by name
to start. **Normal** covers, as you
would expect. **Multiply** darkens, as
if the layer were printed on a
transparency laid over the image —
skies deepen, shadows thicken, nothing
gets lighter. **Screen** is multiply's
mirror: it lightens, lifting murk while
leaving the deepest blacks alone. The
other twenty-odd modes are variations
on these ideas; chapter 7 puts multiply
and screen to work on real photographs,
which is where modes stop being a list
and start being tools.

## Groups, locks, and tidiness

A **layer group** is a folder in the
stack: gather the five layers of a
poster design into one group and the
dialog stays readable, the whole set
can be hidden or moved as one, and a
mask can govern the group together.
The small padlock icons beside a layer
lock its pixels, its transparency, or
its position — the guard you set on a
finished background so a stray brush
cannot ruin it at midnight.

## Merging and flattening: the point of no return

Two operations end the stack, and they
are export-time decisions, not editing
habits:

- **Merge Down** presses the active
  layer into the one below it. Layers
  become a layer. Useful to tidy a pair
  that will always move together.
- **Flatten Image** (in the **Image**
  menu) presses the whole stack into a
  single layer, discarding whatever was
  hidden. Exporting to JPEG does this
  for you, in the exported copy only.

Inside your XCF, neither should happen
casually: a flattened file cannot be
un-pressed. This is chapter 1's rule in
its daily form. Keep the stack alive in
the XCF, let exports flatten their own
copies, and the question "can I still
change the title?" always answers yes.

Check: open any of your saved XCF files
and look at the Layers dialog — you
should be able to say what every layer
is, hide and show each one, and point
to the original, unedited photograph
sitting safely at the bottom of the
stack.
