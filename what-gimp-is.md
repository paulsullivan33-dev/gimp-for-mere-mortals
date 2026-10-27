# What GIMP Is

A digital photograph is a grid of
coloured dots — **pixels** — millions of
them, arranged in rows. Zoom far enough
into any photo on your computer and the
picture dissolves into those dots. Editing
a photograph means changing the dots:
making some brighter, moving a colour,
cutting a piece out and laying it over
another piece.

**GIMP is a program for changing the
dots.** Its full name is the GNU Image
Manipulation Program, and it has been
free — free to use, free to share, free
to inspect — since the 1990s. It opens
photographs and pictures, lets you fix
what is wrong with them, build new
pictures out of pieces of old ones, and
writes the results back out in the
formats the world expects: JPEG for
photographs, PNG for graphics, and its
own **XCF** format for work in progress.

By the end of this chapter you will know
what kind of tool GIMP is, what kind it
is not, and the one working rule this
guide follows from the first page to the
last.

## What people actually do with it

Four jobs account for most of GIMP's
working life:

- **Repairing photographs.** The holiday
  snap that came out too dark, the scan
  with a scratch across it, the group
  photo with a stranger at the edge.
  Chapters 4 and 7 are this job.
- **Preparing pictures for the web.** A
  camera file is enormous and the wrong
  shape for a web page or a message.
  Resizing it, cropping it, and exporting
  it at a sensible quality is chapter 8.
- **Making simple designs.** A poster, a
  book cover, a banner for a web page:
  pictures and text arranged in layers.
  Chapter 9 is this job.
- **Repeating an edit a hundred times.**
  The same fix, the same resize, the same
  watermark on a whole folder of images.
  Chapter 10 teaches GIMP's scripting
  language to do the boring part.

Underneath all four sits the same small
set of ideas — the canvas, layers,
selections, masks, and tools — and
chapter 2 names each one before any
procedure depends on it.

## The rule, stated before everything else

Editing pictures has one accident that
cannot be undone: saving your changes
*over* the only copy of the original.
The dark photo can be brightened. The
brightened photo, saved over the dark
one, can never be dark in exactly the
same way again — the information is
gone. So this guide has one working
rule, and it is not fine print:

> **Work on a copy. Keep the original
> untouched. The saved XCF file is your
> negative.**

Photographers kept the negative and
printed from it; you keep the original
file and the XCF — GIMP's own format,
which holds your layers and your
half-finished work exactly as you left
them — and export copies for the world.
Chapter 4 starts this way, every recipe
in chapter 12 assumes it, and chapter 14
explains what it protects you from.
Nothing in this guide ever asks you to
save over an original, and if you take
one habit from the whole book, take
that one.

## Versions: 2.10 and 3.0

GIMP 2.10 served for years and is still
the version many systems hand you —
including, at the time of writing, the
one this guide's lab installed and
verified. GIMP 3.0 arrived in 2025 with
a tidier interface, several layers
selectable at once, and edits that can
be adjusted later instead of being
baked in. The ideas in this guide —
layers, selections, masks, levels,
exporting — are the same in both, and
the menus this guide names are where
both versions keep them. Where the two
genuinely differ, the text says so.
Chapter 3 covers installing whichever
your system offers.

## Who it is for

The person with a folder of photographs
that need fixing and no wish to rent
software by the month. The maker who
needs a poster, a cover, or a web banner
that looks deliberate. The curious
beginner who wants to understand what
layers and masks *are*, in plain
language, before the vocabulary of a
hundred tutorials washes over them. The
common thread is one person, their own
pictures, and a result they can check
with their own eyes.

## What it is not

GIMP is not a drawing program in the
vector sense: it does not keep shapes as
mathematical outlines you can enlarge
forever. It edits pixels, and a picture
enlarged past its pixels goes soft —
chapter 14 is plain about this and its
other limits. It is not a photo
librarian: it edits one picture at a
time and does not catalogue your
collection (chapter 13 names the tools
that do). It is not where digital
negatives are developed: camera **RAW**
files — the unprocessed data straight
from a sensor — pass through a converter
first, and chapter 13 covers that
hand-off. And it is not a toy that only
does red-eye and filters: the same
program, patiently used, does professional
retouching, which is exactly why its
interface can look alarming on day one.
Chapter 2 takes the alarm out of it,
one named part at a time.
