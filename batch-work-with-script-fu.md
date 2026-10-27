# Batch Work with Script-Fu

By the end of this chapter you will be
able to make GIMP do an edit with no
window at all — from the command line,
to one picture or to a whole folder of
them — using the same operations the
earlier chapters clicked through. Every
command in this chapter was run for
real by this guide's lab; the scripts
are in `gimp-lab/scripts/` and their
output in `gimp-lab/transcripts/`, and
the numbers quoted below are the ones
in those transcripts.

## Why a picture editor has a command line

The clicking chapters share a shape:
open, adjust, export. When the job is
that shape *two hundred times* — a
folder of scans to shrink, a season of
photographs to stamp — clicking stops
being a method and becomes a sentence.
GIMP's answer is **batch mode**: the
program starts without its window,
takes instructions as text, does the
work, and leaves. The instructions are
written in **Script-Fu**, GIMP's
built-in scripting language — a dialect
of Scheme, all parentheses and prefixes,
in which every operation from the menus
exists as a named procedure.

The engine underneath is the
**procedural database**, the PDB: the
catalogue of everything GIMP can be
told to do, from `gimp-file-load` to
`gimp-levels`. In the window, the
**Help → Procedure Browser** lets you
search it (described here, not
demonstrated — the lab had no screen);
in batch mode you simply call the
procedures by name.

## The shape of a batch run

```bash
gimp -i -b '( ...scheme... )' -b '(gimp-quit 0)'
```

Read it left to right. `gimp -i` starts
with **no interface**. Each `-b` hands
the program one batch command to run,
in order. The last one is not optional
in spirit: `(gimp-quit 0)` is what makes
the process leave when the work is
done, and forgetting it is the classic
reason a batch run appears to hang —
it is not hung, it is waiting, politely,
forever, for a command that will never
come. Chapter 15 keeps this trap in its
proper place.

Inside the parentheses, the pattern for
nearly every job is the round trip from
chapter 4, written out:

```scheme
(let* (
    (image    (car (gimp-file-load RUN-NONINTERACTIVE
                    "images/hillside.png" "hillside")))
    (drawable (car (gimp-image-get-active-layer image)))
  )
  (gimp-image-scale image 320 240)
  (gimp-file-save RUN-NONINTERACTIVE image drawable
                  "images/hillside-small.png" "hillside-small")
  (gimp-xcf-save RUN-NONINTERACTIVE image drawable
                 "images/hillside.xcf" "hillside")
  (gimp-image-delete image)
)
```

Three things to notice. `let*` names the
working pieces — the loaded image, its
active layer (the **drawable**, the
thing procedures draw on). Most
procedures return a list, and `car`
takes the first item of it, which is
the image or layer you actually want.
And `gimp-file-save` chooses how to
write by the name you give it: a `.png`
name exports a PNG, a `.jpg` name a
JPEG, at the plug-ins' default
settings.

The lab ran exactly this
(`gimp-lab/scripts/t02-scale-and-export.sh`).
Its transcript records the load reading
back 640×480, the scale and both saves
done, and a second run reopening the
XCF to prove the round trip: 320×240,
one layer. A scale you can verify is
worth ten you merely believe.

## A repair, repeated exactly

Chapter 7's levels repair is one
procedure call:

```scheme
(gimp-levels drawable HISTOGRAM-VALUE 40 210 1.2 0 255)
```

— black point 40, white point 210,
gamma 1.2, outputs untouched. The lab
applied it to a fresh copy of its
sample and measured the result rather
than admiring it: mean brightness rose
from 100.8 to 105.9, and the spread of
the tones — the flat photograph's
missing contrast — widened from 30.4 to
46.1 (`t03-levels.txt`). The point for
this chapter is not the numbers; it is
that a judgement made once, by eye, in
chapter 7 becomes a line of text that
applies the *same* judgement, exactly,
to the next picture and the next
hundred.

## The whole folder: file-glob and a loop

One picture is a command; a folder is a
loop. `file-glob` expands a pattern
into the list of files it matches, and
`for-each` runs a small function over
the list:

```scheme
(let* (
    (files (cadr (file-glob "images/hillside*.png" 0)))
  )
  (for-each
    (lambda (path)
      ;; load path, scale it to width 160,
      ;; save it under images/thumbs/,
      ;; and delete the image again
      )
    files)
)
```

The lab's full version is
`t07-thumbnails.sh`, comments included,
and its transcript shows all five of
the lab's PNG files thumbnailed to
160×120 and read back at that size.
This is the chapter in one gesture:
the boring, identical, perfectly
checkable edit, done while you make
tea.

Two honest warnings from the lab's own
scars, both in chapter 15. Written
Scheme inside a shell command is one
long single-quoted string, and an
apostrophe inside it — even in a
comment — ends the string early and
mangles the command, *silently*: the
lab's first loop run reported success
and did nothing at all. And this
build's Script-Fu differs from the
classic documentation in small print
that matters: `file-glob` hands its
matches back as a plain list where the
manual says a vector, and some named
procedures the manual lists are not
callable at all. The transcripts show
each discovery and its workaround;
trust the build in front of you over
any book, this one included.

## What batch mode is not

It is not faster magic: the same
operations take the same time, minus a
human between them. It is not the way
to explore — with no window there is
nothing to look at, and exploration is
what the window is for. And it is not
a macro recorder's transcript of your
clicks: you write these procedures by
hand, from the PDB's catalogue, which
is why the ones in this chapter are
short, named, and checkable — and why
the lab verified each before teaching
it.
