# Fixing a Photograph

By the end of this chapter you will be
able to take a photograph with the
usual faults — too dark, flat, slightly
the wrong colour, marred by a scratch
or a stray object — and repair each one
with the instrument made for it: levels
for the light, curves for finer control
of the same thing, the colour tools for
a cast, and the healing tool for the
damage. Chapter 4's single slider was
first aid; this is the surgery, still
in plain language.

The laboratory verified the heart of
this chapter headlessly: a levels
adjustment applied to a real image in
batch mode, with the picture's measured
brightness before and after recorded in
`gimp-lab/transcripts/`. The clicking
teaching here follows the same
operations in the window.

## Reading the histogram

Open **Colors → Levels** on any photo
and you meet the **histogram**: a small
mountain range that counts the photo's
pixels by brightness, dark on the left,
bright on the right. It is the most
useful graph in editing, and it reads
at a glance:

- A range bunched in the middle, with
  empty ground at both ends, is a **flat**
  photo: nothing truly dark, nothing
  truly bright — the grey-day look.
- A range piled against the left is a
  **dark** photo; against the right, a
  **blown** one.
- A range that reaches both edges is
  using the full scale — the healthy
  shape most repairs aim for.

Under the histogram sit three small
triangles: black point, middle (called
**gamma**), white point. The repair for
the flat photo is one sentence: drag
the black triangle right until it just
touches the foot of the mountains, the
white triangle left likewise, and the
middle triangle to taste. The photo
gains true blacks and true whites and
its contrast wakes up — without the
overall washing-out of chapter 4's
blunt slider. Do it on a duplicated
layer (chapter 5's habit) and use the
eye icon to compare honestly.

## Curves: levels with a bend

**Colors → Curves** shows the same
histogram behind a diagonal line. The
line is a mapping: pull a point of it
down and those tones get darker, push
up and they get lighter. The classic
move is a gentle **S**: drag the bright
quarter up a little, the dark quarter
down a little, and contrast rises in
the middle tones where faces and most
subjects live, without crushing the
extremes. Curves asks more judgement
than levels and returns more control;
learn levels until its three triangles
feel obvious, then graduate. Most
photographs need levels. Curves is for
the ones that still look wrong after.

## The colour cast

Old scans go yellow; indoor photos go
orange; shade goes blue. A **cast** is
one colour laid over everything, and
its tell is that things you *know* are
grey — concrete, a white shirt in the
background — are not grey on screen.

Two repairs, in order of effort.
**Colors → Auto → White Balance** takes
a fair first swing and is sometimes
exactly right. For control, return to
Levels and use its per-channel view:
the same three triangles exist
separately for red, green, and blue,
and trimming the channel whose
mountains overhang the edge pulls the
cast out by arithmetic instead of by
eye. Chapter 11 explains why screens
and printers make casts in the first
place, briefly and without mysticism.

## Healing scratches and strays

The **Heal** tool paints with borrowed
pixels: it copies texture from a place
you choose and blends it over the place
you paint, matching light and colour as
it goes. A scratch across a scanned
print, a blemish, a litter bin at the
edge of a harbour photo — these are its
daily work.

The method: zoom in until the damage
fills the screen. Hold **Ctrl** and
click a clean patch *near* the damage,
similar in light and texture — this
sets the source. Release, then paint
over the damage in short strokes,
re-choosing the source whenever the
texture changes. Its sibling the
**Clone** tool works identically but
copies exactly, without blending: clone
for hard-edged things like a missing
corner of a sign, heal for anything
organic — skin, sky, sea, grass.

Honesty is the technique's limit, and
it is worth stating in a fixing
chapter: healing removes what you point
at, and a person or object painted out
of a photograph is a small fiction.
Repairing your family's scratched
prints is restoration. The same strokes
used to deceive a buyer or a reader are
forgery with better tools — chapter 14
returns to the line, which your own
judgement draws and this guide will not
blur.

## The finishing touches

- **Sharpening**, last and least:
  **Filters → Enhance → Sharpen
  (Unsharp Mask)** at a small amount
  crisps edges softened by scanning or
  resizing. It invents nothing; overuse
  draws white halos around everything,
  visible from across the room.
- **Straightening**: the **Measure**
  tool along a crooked horizon, then
  **Image → Transform → Arbitrary
  Rotation** offers to match it — a
  horizon that is level is the
  difference between a snapshot and a
  photograph.
- Then stop. The repaired photo is the
  one where the faults no longer
  announce themselves, not the one
  where every slider has been visited.

Check: take your flattest photograph,
apply the levels repair on a duplicate
layer, and toggle the eye icon. The
fixed version should have real blacks,
real whites, and a subject that no
longer looks photographed through fog —
and the histogram, reopened, should now
reach both edges.
