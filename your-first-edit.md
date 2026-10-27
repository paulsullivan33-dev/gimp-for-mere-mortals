# Your First Edit

By the end of this chapter you will have
taken one dull photograph and made it
presentable: opened a *copy* of it,
brightened it a little, cropped away the
wasted edges, saved your work in GIMP's
own format, and exported a finished
picture under a new name. The original
will be exactly as it was. That round
trip — copy, edit, save the working
file, export a result — is the shape of
every job in this guide.

The interactive steps in this chapter
are described from the program's
interface and documentation; this
guide's lab has no screen to click on,
and verified the same operations
(opening, adjusting, exporting) through
GIMP's batch mode instead — the ledger
is in `criteria.md`, and chapter 10
shows that machinery. The steps below
are the clicking version of exactly
those operations.

## Start with a copy

Take any photograph of your own — the
plainer the problem, the better the
lesson; a grey, slightly dull landscape
is ideal. In your file manager, copy the
file and rename the copy so its name
says what it is: `hillside-original.jpg`
stays untouched, and you will work on
`hillside-working.jpg`. From here to the
end of the chapter, only the working
copy is ever opened.

## Open it and look at it

Start GIMP and choose **File → Open**,
and pick the working copy. The photo
fills the canvas. Before changing
anything, look: use **View → Zoom →
Fit Image in Window** if it overflows,
and note what is actually wrong. Most
dull photos share two faults — they are
a little dark, and the interesting part
is smaller than the frame. This chapter
fixes exactly those two, in that order.

## Brighten it a little

Choose **Colors → Brightness-Contrast**.
Two sliders appear. Nudge **Brightness**
up by a small amount — ten or fifteen
points, not fifty — and watch the photo
while you drag. The **Preview** box is
ticked by default, so the canvas shows
the change live; untick it to glimpse
the before state, tick it again for
after. Click **OK** when the picture
looks like the day felt.

Restraint is the skill here. Every
editor can make a photo brighter; the
ones worth trusting stop before the sky
turns to white paper. Chapter 7 teaches
the finer instruments — levels and
curves — that adjust the darks and
lights separately; this slider is the
blunt one, used gently.

Check: the photo is visibly lighter, and
the brightest parts — clouds, a pale
wall — still hold some detail rather
than glowing blank.

## Crop away the waste

Pick the **Crop** tool from the toolbox
(chapter 2 named it) and drag a
rectangle around the part of the photo
that matters: the hillside and the barn,
say, without the empty foreground and
the strip of grey sky. Drag the corners
to adjust. Press **Enter** (or
double-click inside the rectangle) and
everything outside is cut away.

The canvas is now smaller — the image
*is* this rectangle now. If you cropped
too tight, **Edit → Undo** brings the
edges back; undo is generous in GIMP,
and learning to rely on it makes every
later chapter braver.

Check: the picture is all subject, with
no border of nothing around it.

## Save the working file

Choose **File → Save As** and name it
`hillside.xcf`. This is the step
beginners skip and veterans never do.
The XCF keeps everything — layers,
selections, the state of the work — so
closing the program loses nothing, and
you can reopen tomorrow and carry on.
Remember chapter 1's rule: this XCF is
your negative, the thing you keep.

Note what did *not* happen: GIMP did
not offer to save over your JPEG. Saving
and exporting are separate acts in GIMP,
and that separation is the rule's best
friend.

## Export the result

Choose **File → Export As** and name the
result `hillside-fixed.jpg`. A dialog
asks about **Quality**: 90 is a good
habit for photographs you care about —
visually indistinguishable from the
camera's own, at a fraction of the size.
Click **Export**.

Now look at your folder. Three files
tell the whole story: the original,
untouched; the XCF, your working
negative; and the exported JPEG, the
finished picture you would send or post.
Open the exported file in any picture
viewer and compare it with the original,
side by side.

Check: the fixed picture is brighter
and tighter than the original, the
original's size and date in the file
manager have not changed, and you can
say exactly which file is which. That
is a complete, honest edit — and every
chapter from here is this same round
trip with sharper tools.
