# Limits

An honest chapter about what GIMP
cannot do, does badly, or should not
be asked to do — so that the trust
the other chapters asked for is
trust in a tool whose edges you have
seen.

## Pixels end

GIMP edits pixels, and a picture holds
only the pixels it holds. Enlarge a
small picture and the program must
invent the new dots by interpolation
— educated guessing that reads, at any
real magnification, as softness.
There is no setting that recovers
detail never captured; sharpening
(chapter 7) crisps edges, it does not
create information. The practical
laws: photograph big, edit at the
size you have, export at the size
needed (chapter 8), and draw logos
and line art in a vector tool
(chapter 13) where enlargement is
free. Any tool — commercial ones
included, whatever their advertising —
that promises otherwise is selling
the guess as a photograph.

## Colour has borders

Chapter 11 gave the gentle version;
here is the blunt one. GIMP edits in
RGB colour. It can soft-proof how a
print will look and convert to a
profile for export, but it does not
edit natively in the CMYK space of
commercial printing, and some colours
a screen shows cannot be printed at
all. For home printing and the web,
this costs nothing. For a print shop
with separations and proofs, it is a
real border, crossed by taking the
shop's advice — or a different tool.

## One picture, no library, no darkroom

GIMP opens pictures one at a time and
fixes them. It does not catalogue
your collection, develop camera RAW
files, or apply one edit across a
shoot with a librarian's grace —
chapter 13's neighbours do those
jobs, and pretending GIMP covers
them serves nobody. Batch mode
(chapter 10) repeats an edit
mechanically; that is a conveyor
belt, not a darkroom.

## The honest-editing line

Chapter 7's healing brush removes a
scratch. The same brush removes a
person, a licence plate, a crack in
a product being sold. The tool
cannot tell restoration from
deception, so the distinction is
yours to keep, and it is not subtle:
repairing damage and age is honest
work; altering what a picture
*testifies* — for a buyer, a reader,
a court, an insurer — is forgery,
and the ease of the tool does not
move the line one pixel. A related
courtesy: other people's photographs
are their work; editing one for your
own purposes is usually fair, and
passing the result off as unaltered
or as your own is not. This guide's
lab edited only pictures it drew
itself, which is the tidy extreme of
a rule worth stating at full size.

## Versions and their small print

GIMP lives a long time between
versions, and the edges show.
Plug-ins and scripts written for 2.10
may need changes for 3.0 — procedure
names and calling details moved, as
this guide's own lab found in small
(chapter 15 tells how a documented
call failed and a bundled script
showed the working form). The
interface language of old tutorials
similarly rots: a walkthrough naming
a menu that moved is a map of a city
that rebuilt a street. None of this
is scandal; it is what a free tool
maintained by volunteers across
decades looks like, and the defence
is the one this guide practised —
verify against the build in front of
you, and keep the verification.

## Size and speed

Very large images — billboard scans,
hundred-layer compositions — can
outgrow a modest machine's memory
and patience, and GIMP's answer to a
spinning cursor is sometimes simply
*wait*. Work at the size the job
needs, keep the layer count honest,
and let the XCF save often. The tool
that does everything in this guide
for free is allowed its one vice:
it is in no hurry, and neither, on
the evidence of the preceding
chapters, should you be.
