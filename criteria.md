# Writing criteria for this guide

Every "for Mere Mortals" guide is written to the same nine-point
standard, so a reader who trusts one can trust the rest. Here it
is, with the verification notes for this particular guide below.

1. **Fix it first.** Reader outcomes lead, not action items: each
   chapter opens by naming the outcome it delivers, shows a check
   the reader can run to confirm they got it, and a reasonable
   reader finishes able to state what was done, what it means,
   and what to try next.
2. **Plain language.** Short sentences, everyday vocabulary,
   technical terms defined on first use. No slang, and no
   idioms that only make sense in one country — the reader may
   be translating as they go.
3. **No dead ends.** A guide never tells the reader to do
   something it cannot show them how to verify. Every claim a
   reader relies on — an install, a command, an output — is
   something this guide demonstrates or clearly labels
   documented-only below.
4. **Live-verified where it matters.** Procedures are run for
   real in the guide's lab wherever the build machine allows it,
   and the transcripts kept in the repository are the evidence.
   What could not be run is listed honestly below, never
   presented as if it had been.
5. **General audiences.** Nothing in this guide — examples,
   fixtures, names, addresses — is modelled on any particular
   reader or author's real life, network, or organisations.
   The lab's only picture is one it drew itself.
6. **Standalone.** A reader needs this guide, its lab, and
   nothing else. Where another guide would genuinely help, it
   is pointed to once, by name, and the chapter still completes
   without it.
7. **Honest about limits.** Chapter 14 names what the tool
   cannot do: it edits pixels rather than vectors, so a picture
   enlarged past its pixels goes soft; it has no native CMYK
   editing for commercial print; it keeps no photo library and
   develops no RAW files; and its plug-ins and scripts can
   break across major versions, 2.10 to 3.0 included.
8. **The working rule is in the text, early.** Chapter 1 and the
   README state the rule plainly — *work on a copy, keep the
   original untouched, and let the saved XCF be your negative*
   — before any procedure depends on it, and later chapters
   point back to it wherever an export, a flatten, or a
   careless save would quietly destroy the only original.
9. **Builds clean.** The site builds with MkDocs in strict mode
   with no warnings, and a fresh reader following the chapters
   in order reaches the stated outcome of each.

## Verification notes for this guide

The build machine is a 2-CPU, 7.7 GB Ubuntu 24.04 sandbox with
no display. GIMP **2.10.36** was installed with apt, using
chapter 3's commands verbatim, and exercised entirely through
its batch mode (`gimp -i -b`). The sample picture is an
invented landscape drawn by a Python script kept in the lab
(`gimp-lab/scripts/make_sample.py`): sky, sun, two hills, a
stone barn, and a scratch drawn in to stand for scan damage.
All transcripts live in `gimp-lab/transcripts/`; the scripts
that produced them are in `gimp-lab/scripts/`.

Run for real, with transcripts as evidence:

- Install by apt and `gimp --version`: 2.10.36 (t00).
- The sample generated and measured: 640×480, PNG 5,021
  bytes, mean brightness 100.8 of 255 (t01).
- Batch scale 640×480 to 320×240, PNG export, XCF save —
  and the XCF reopened and read back at 320×240 with one
  layer, closing the save-and-reload round trip chapter 4
  teaches (t02).
- Chapter 7's levels repair (black point 40, white point
  210, gamma 1.2) applied in batch and measured, not admired:
  mean brightness 100.8 → 105.9, spread of tones 30.4 → 46.1
  (t03).
- A layer operation end to end: new transparent layer added,
  a rectangle selected and filled in it, the stack flattened
  and exported; the filled pixel read back as exactly the
  fill colour (255, 90, 40) and a sky pixel read back
  byte-identical to the original (t04).
- Text rendered onto the picture and verified by counting
  pixels: 2,881 pixels changed in the text's strip (t05).
- Chapter 8's format table measured at default settings:
  the same picture exported by GIMP as PNG (8,195 bytes)
  and as JPEG (20,828 bytes) — the drawn sample is PNG's
  home ground, and the chapter says why a photograph
  reverses the result (t06).
- The batch promise itself: `file-glob` and `for-each`
  shrinking all five lab PNGs to 160×120 thumbnails, each
  read back at that size (t07).

Documented only — described from the program's interface and
documentation, not run, and the text does not claim
otherwise:

- Every interactive procedure: the window's layout, the
  toolbox and dialogs, and the clicking form of the edits in
  chapters 4 to 9. The lab verified the operations
  underneath those chapters headless (opening, scaling,
  levels, layers, rectangular selection, filling, text,
  exporting, saving XCF), and each chapter states which
  side of that line it stands on.
- The Windows and macOS installs in chapter 3.
- The Procedure Browser and the Script-Fu console in
  chapter 10 (the PDB operations themselves are the
  verified part).
- Colour management in chapter 11, the build machine
  having no screen to manage colour on.
- The JPEG quality slider's effect in chapter 8: the
  values taught are the interface's own, and the lab's
  format measurements are at plug-in defaults, for the
  reason the next paragraph gives.
- The comparison tools in chapter 13 are characterised,
  not benchmarked.

Three discoveries from the lab are part of the evidence, and
chapter 15 teaches from them. This build's batch Script-Fu
does not bind the named export procedures (`file-jpeg-export`,
`file-png-export`) or the PDB query procedures at all;
`gimp-file-save`, dispatching by extension, carried every
export instead. `gimp-text-layer-new` rejected its documented
arguments in this build, and the working text call —
`gimp-text-fontname` — was found in `font-map.scm`, a script
that ships with GIMP itself. And a batch run whose Scheme
program contained an apostrophe inside a comment silently
did nothing while reporting success, because the shell's
single-quoted string ended early; the loop it broke is t07,
whose script now carries the warning in its comments —
written, for obvious reasons, without apostrophes.

Fixtures are this guide's own and deliberately generic: one
drawn landscape with a barn and a scratch, one invented
village fête on a poster, and captions in capital letters.
No example is modelled on any real person, photograph,
organisation, or place, and no real photograph appears
anywhere in this guide.
