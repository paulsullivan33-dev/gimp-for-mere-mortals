# Selections and Masks

By the end of this chapter you will be
able to fence off exactly the part of a
picture you mean to change — no more,
no less — and to replace the hard fence
with a painted mask when the edge needs
to be soft, gradual, or undoable. These
are the precision instruments of the
whole guide: chapters 7 and 9 both
reach for them.

## The fence, and what it really does

A **selection** is the dashed line —
the marching ants — around a region.
While a selection exists, painting,
adjusting, and deleting happen inside
it only. The rest of the layer is not
locked forever; it is simply not
addressed. **Select → None** dismisses
the fence, and forgetting to dismiss it
is the other great beginner mystery:
"the brush stopped working" usually
means a selection the size of a postage
stamp is still active somewhere.

Selections are per-image, not
per-layer, and they are made of pixels:
a selection edge can be soft. **Feather**
blurs the fence's edge by a few pixels,
so a pasted piece blends into its new
home instead of looking cut out with
scissors. Almost every real selection
wants a small feather — one to five
pixels on a web-sized picture, more on
a large photograph.

## Drawing the fence

Choose the tool by the shape of the
thing:

- **Rectangle and Ellipse Select** for
  tidy shapes: a sign, a window, a moon.
  Hold **Shift** while dragging to add
  to an existing selection, **Ctrl** to
  subtract — building a fence from
  several simple shapes is normal work,
  not a failure of the lasso.
- **Free Select** (the lasso) for
  outlines you draw by hand. Click point
  to point around a shape for straight
  segments, or drag for a freehand line.
  Slow down at the corners; the shape
  forgives everything except hurry.
- **Fuzzy Select** (the magic wand)
  fences a region of similar colour with
  one click. Its **Threshold** option sets
  how similar is similar. It is brilliant
  on a plain sky and helpless in a
  crowd — know which picture you have.
- **Select by Color** is the wand's
  stricter sibling: everywhere in the
  image this colour appears, not just
  the connected patch.
- **Scissors** snaps its path to the
  strong edges it finds as you click
  along a boundary — a person against a
  wall, a boat against the sea. Where an
  edge exists, scissors finds it faster
  than your hand can trace it.

Two rescues belong in every reader's
pocket. **Select → Invert** swaps the
fence: often it is easier to select the
plain background and invert than to
trace the complicated subject.
**Select → Grow** and **Shrink** nudge a
nearly-right fence out or in by a pixel
or two, which is usually the difference
between a halo and a clean edge.

## From fence to mask

A selection is temporary — dismiss it
and it is gone. A **layer mask** is the
same idea made permanent and paintable,
and chapter 2 introduced it: white
reveals, black hides, grey reveals
halfway.

The standard manoeuvre, worth learning
as one motion:

1. Make the best selection you can of
   the subject.
2. In the Layers dialog, right-click
   the subject's layer and choose **Add
   Layer Mask**, initialised from the
   selection.
3. The subject stands alone; the rest
   of the layer is hidden, not deleted.
4. Click the mask's thumbnail — note it
   now has the white border, meaning
   your brush paints the *mask*, not the
   picture — and tidy the edge in black
   and white until it is honest.

Cutting a product photo onto a white
background, moving a boat from one
harbour photograph into another, fading
a portrait's edges into a poster — all
are this manoeuvre at different levels
of patience.

## Why masks beat erasers

The **Eraser** deletes pixels. A mask
hides them. That difference decides
whether an edit can be revisited: the
erased mistake is gone at save time,
while the masked mistake is one white
brushstroke from forgiven. Masks also
do what no fence can — gradual
revelation. Paint a black-to-white
gradient on a mask and one photograph
melts into another, the classic
montage. Chapter 12's recipes lean on
exactly that.

Check: take any photo with a plain sky,
select the sky with the wand, invert,
add a mask from the selection, and the
subject should stand alone on the
checkerboard — then paint white on the
mask and watch the sky come back,
unharmed, because it was never gone.
