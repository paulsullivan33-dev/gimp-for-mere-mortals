# Troubleshooting

Symptoms first, in the order a reader
meets them. Every entry names the
cause before the fix, because a fix
you understand stays fixed. The final
two entries are this guide's own lab
scars, kept on purpose.

## The brush paints nothing

Three causes account for nearly every
case. The **wrong layer is active** —
look at the Layers dialog and click
the layer you meant (chapter 5's
reflex). A **selection is active
somewhere** — the marching ants may
be around a stamp-sized area off
screen; **Select → None** and paint
again (chapter 6). Or you are painting
on a **layer mask** — the mask's
thumbnail has the white border; click
the layer's own thumbnail to paint
the picture instead. One of the three
is your answer almost every time.

## The eraser makes squares, not holes

The layer has no **alpha channel** —
no record of transparency — so the
eraser can only paint the background
colour. Right-click the layer, choose
**Add Alpha Channel**, and erase
again: the checkerboard appears,
which is transparency showing through.
Photographs loaded from JPEG often
arrive without alpha, for the good
reason that JPEG has none to give.

## Everything is slow and the picture is huge

Check the real size before blaming the
program: **Image → Image Properties**
shows the pixel count, and a phone
photo at full size is millions of
pixels being filtered on every stroke.
If the destination is a web page,
scale a *copy* down first (chapter 8)
and edit at working size. Chapter 14
covers the honest version of this
limit.

## The batch run never ends

The scheme ran and the process is
still sitting there an hour later:
the final `(gimp-quit 0)` is missing,
or an earlier error stopped the script
before reaching it. Batch mode waits
for commands forever; it has nowhere
else to be. Kill the process, fix the
script, and re-run — and make the quit
the line you type first, not last,
when drafting (chapter 10).

## The batch run "succeeded" and did nothing

The lab's own favourite. The shell
passes the Scheme program to GIMP as
one long **single-quoted string**, and
an apostrophe anywhere inside it —
the lab had one in a *comment*,
"this build's" — ends the quote
early. The shell then hands GIMP a
mangled program and some loose words,
and GIMP, receiving a fragment that
happens to do nothing, reports
success. The fix is embarrassingly
small: no apostrophes inside the
quoted program, comments included,
and a healthy suspicion of any run
that finishes too quietly. Verify
outputs — file sizes, dimensions read
back — the way chapters 8 and 10 do,
and silence cannot fool you.

## A documented procedure fails in batch mode

Also the lab's, and the more general
lesson. Two forms:

- *"Unbound variable"* for a procedure
  the manual lists — in the lab's
  build, the named exporters
  (`file-jpeg-export`, `file-png-export`)
  and the PDB's query procedures were
  not callable from Script-Fu, though
  the plug-ins themselves worked.
  `gimp-file-save`, which dispatches
  by file extension, did every export
  the lab needed.
- *"Invalid type"* for a call that
  follows the documentation exactly —
  `gimp-text-layer-new` rejected its
  documented arguments in the lab's
  build, while `gimp-text-fontname`,
  found in a script that ships *with*
  GIMP (`font-map.scm`), did the job.

The moral is the guide's method in
miniature: builds differ in small
print; the programs bundled with your
own copy are the ground truth for
calling conventions; and a procedure
that fails tells you something true
about your build, not about your
competence. `criteria.md` records
each case the lab met.

## The exported picture changed colour

Almost always chapter 11 knocking:
the profile was stripped on export,
or the screen you are checking on
disagrees with the screen you edited
on. Re-export with the profile
embedded, and compare on the same
screen before concluding anything.

## The Snap version cannot find your photos

A confined package sees a fenced part
of the disk. If your pictures live
outside your home folder and the open
dialog cannot reach them, that is the
fence, not a fault: copy the working
files into your home folder, or
install by another route from
chapter 3.
