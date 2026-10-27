# Colour Management in Plain Language

By the end of this chapter you will
understand why the same picture looks
different on your screen, your phone,
and a printed page — and the two or
three settings that keep those
differences small and unsurprising.
This is the plain-language chapter: the
full science is a profession of its
own, and what a mere mortal needs is
the honest sketch and the habits that
follow from it. It is taught from the
concepts and GIMP's documentation; the
lab's screen-less machine could
demonstrate none of it, and
`criteria.md` files it accordingly.

## The problem: numbers are not colours

A pixel's colour is stored as numbers:
so much red, so much green, so much
blue. But numbers alone do not say
*which* red. Your monitor's red, your
phone's red, and a printer's red ink
are three different colours wearing the
same numbers, the way "a cup" means
different amounts in different
kitchens. Show the same file on two
screens and the pictures differ —
usually a little, sometimes enough to
argue about.

A **colour profile** (an ICC profile,
for the standard's initials) is the
label that resolves the ambiguity: a
small data file describing exactly
which colours a device or a colour
space means by its numbers. **Colour
management** is the bookkeeping that
reads those labels and translates, so
that the red you meant is the red that
appears, as closely as each device
can manage.

## The one space to know: sRGB

**sRGB** is the standard colour space
of the web, of phones, and of nearly
every screen that is not a specialist's.
It is the assumed label when a picture
carries no label at all. The mortal's
first habit follows directly:

> **If a picture is going to a screen,
> keep it in sRGB, and let the export
> carry the profile with it.**

GIMP works the same way. Pictures you
open arrive in some space; GIMP can
**assign** a profile (declare what the
numbers mean — use only when you know
the truth differs from the label) or
**convert** to a profile (recompute
the numbers so the colours stay the
same under a new label — the safe,
ordinary operation, **Image → Mode →
Convert to Color Profile**, with sRGB
as the destination for screen work).
Assigning when you meant converting is
the classic self-inflicted wound: the
numbers do not change, their meaning
does, and the picture shifts colour
for no visible reason.

## Screens differ; printers differ more

Two consequences worth internalising.
First, an uncalibrated screen lies a
little — too bright, too blue, it
varies — and for photographs destined
for other screens, *close* is the
realistic goal; the world's phones do
not agree with each other either.
Serious workers calibrate their monitor
with a small hardware puck and a
profile it writes; GIMP will use that
profile if your system has one, and
the rest of us can simply know our
screen is a witness, not a judge.

Second, printers — especially the big
commercial kind — speak **CMYK**: cyan,
magenta, yellow, and black inks, which
can make some colours screens cannot,
and cannot make some colours screens
can, neon-bright greens and blues
first among them. GIMP can *soft-proof*
a picture (simulate the print on
screen, through the **View** menu's
colour-management options, with the
proofing profile chosen in
Preferences) but it does not edit
natively in CMYK. Work destined
for a print shop is a conversation
with that shop about what file they
want; chapter 14 lists this among the
honest limits, and chapter 13 names
the tools printers reach for.

## The embedded-profile question

JPEGs and PNGs can carry their profile
inside the file. Keep it there. GIMP's
export dialogs offer to embed the
profile, and the mortal's answer is
yes, always: the label costs a few
kilobytes and saves every future
viewer from guessing. The one
exception proves the rule — a handful
of very old web tools choke on
profiles; if a destination demands
stripped files, export a copy for it
and keep your labelled original, which
is chapter 1's rule wearing yet
another hat.

Check: open a photograph and look at
**Image → Image Properties** — the guide
cannot see your screen, but you can
confirm the picture's colour space is
named there, and that your exports
carry sRGB with them. A reader who
knows *which space am I in, and did
the label travel?* knows the mortal's
whole subject.
