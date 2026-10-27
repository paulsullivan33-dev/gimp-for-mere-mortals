# Resizing and Exporting for the Web

By the end of this chapter you will be
able to take a camera-sized photograph
— four thousand pixels wide and several
megabytes heavy — and produce the file
a web page, an email, or a message
actually wants: the right number of
pixels, in the right format, at a
quality you chose on purpose. This is
the most frequently used chapter of the
guide in most readers' lives, and the
one where chapter 1's rule pays rent:
the camera file is never the file you
shrink.

The shrinking itself is verified in
this guide's lab: chapter 10's batch run
takes a generated image down to a stated
size and the transcript reads the
result's dimensions back from the file.

## Pixels are the size

A photograph's screen size is its pixel
count, nothing else. A 4000 × 3000 photo
shown in a web page column 800 pixels
wide is wasting seven eighths of
itself, and the browser throws the
extra away after making the reader
download it. The fix is to hand over a
file already at the size it will be
shown: 1600 pixels wide suits most full
web pages, 1200 most articles, 800 a
sidebar or a thumbnail that must still
read clearly. When in doubt, ask where
the picture is going; the answer is a
number of pixels.

## Scaling the image

Work on your copy, with the XCF open.
**Image → Scale Image** shows the
current width and height with a small
chain link between them: leave the
chain fastened and the picture keeps
its proportions, which is nearly always
what you want. Type the new width; the
height follows. Click **Scale**.

Two truths about scaling. Going down is
safe and even flattering — fine detail
averages out and noise quietens. Going
*up* invents pixels that were never
photographed; small enlargements pass,
doublings go visibly soft, and chapter
14 files this under limits, not
technique. And scaling is one of the
few edits to make **before** sharpening:
chapter 7's sharpen comes after the
resize in any careful workflow, at the
final size, lightly.

## Cropping to a shape

Sometimes the destination dictates a
shape, not just a size — a banner three
times as wide as tall, a square avatar.
Use the **Crop** tool with its options
set to a **Fixed aspect ratio**, drag
the frame until the subject sits well,
then scale the result to the exact
pixel size required, in that order:
crop decides *what*, scale decides
*how big*. Guessing the shape and
letting a website crop for you is how
heads get cut off in previews.

## Formats, in one honest table

- **JPEG** — photographs. Millions of
  colours, small files, and *lossy*: it
  discards fine detail you mostly cannot
  see, more aggressively the lower the
  quality setting. No transparency.
- **PNG** — graphics, screenshots, text,
  logos, anything with hard edges or
  transparency. *Lossless*: every pixel
  kept, and photographs pay for that
  fidelity in megabytes.
- **WebP** — the modern web's compromise:
  photographs near JPEG sizes, graphics
  with transparency, supported by every
  current browser. A fine default when
  the destination accepts it.
- **GIF** — survived by animation and
  habit; 256 colours make it a poor
  choice for still photographs.

The rule of thumb writes itself:
photographs to JPEG (or WebP), sharp-
edged graphics and anything transparent
to PNG, and never re-save a JPEG as a
JPEG repeatedly — each save discards
again, which is why the XCF, and not a
JPEG, is the file you keep editing.

## The export dialog, deliberately

**File → Export As**, with a `.jpg`,
`.png`, or `.webp` name, and the dialog
asks its questions. For JPEG, the
**Quality** slider is the whole story:
90 for work you care about, 80 for
ordinary web use, and below 70 the
damage becomes visible in skies and
faces. Tick **Show preview
in image window** and the dialog
reports the resulting file size before
you commit: the honest number every
upload limit cares about. This guide's
lab measured the format side of the
bargain headless
(`gimp-lab/transcripts/t06-formats.txt`):
the same picture exported at default
settings came out at 8,195 bytes as PNG
and 20,828 as JPEG — because the lab's
sample is flat-shaded artwork, PNG's
home ground, exactly as the table
above predicts. A photograph reverses
those numbers, which is the table's
other half.

For PNG there is no quality to choose —
lossless is lossless — only a
compression level that trades saving
time for bytes, rarely worth touching.

## The finished routine

1. Camera file → copy → XCF working file.
2. Fix (chapter 7), crop to shape,
   scale to the destination's pixels.
3. A whisper of sharpening at final size.
4. Export As, format by the table,
   quality by the bargain, new name:
   `harbour-banner-1600.jpg` says what
   it is and where it is going.

Check: your exported file, inspected in
the file manager, is close to the pixel
size and file size you intended, opens
looking like the picture you edited —
and the original camera file sits
beside it, full-sized and untouched,
ready for the next destination that
wants a different size entirely.
