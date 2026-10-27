#!/usr/bin/env python3
"""Generate this guide's sample image: an invented dull-day
landscape (sky, pale sun, two hills, a stone barn, and one
simulated scratch across it, like a damaged scan).

The picture is deliberately flat and a little dark, so the
levels repair in the lab has something real to fix.
Everything in it is drawn by this script; no photograph,
real or anyone's, is involved.

Writes hillside.png and hillside.ppm (640x480) beside this
script's ../images/ folder, and prints the facts the lab
transcripts quote: dimensions, file sizes, mean brightness.
"""
from PIL import Image, ImageDraw
import os

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, "..", "images")
os.makedirs(OUT, exist_ok=True)

W, H = 640, 480
img = Image.new("RGB", (W, H))
d = ImageDraw.Draw(img)

# Sky: a dull vertical gradient, blue-grey up high,
# nearly white-grey at the horizon.
for y in range(0, 300):
    t = y / 300.0
    r = int(118 + 60 * t)
    g = int(128 + 58 * t)
    b = int(142 + 50 * t)
    d.line([(0, y), (W, y)], fill=(r, g, b))

# A pale sun, low contrast behind the murk.
d.ellipse([470, 40, 560, 130], fill=(205, 200, 175))

# Far hill: muted green-grey.
d.polygon([(0, 300), (200, 215), (430, 285), (640, 235),
           (640, 480), (0, 480)], fill=(104, 116, 88))
# Near hill: darker green, lower.
d.polygon([(0, 380), (180, 320), (420, 395), (640, 350),
           (640, 480), (0, 480)], fill=(74, 92, 58))

# A stone barn on the near hill: grey-brown walls,
# a darker roof, one black doorway.
d.polygon([(150, 330), (210, 298), (270, 330)], fill=(70, 58, 50))
d.rectangle([162, 330, 258, 392], fill=(128, 116, 102))
d.rectangle([196, 356, 224, 392], fill=(30, 26, 22))

# The simulated damage: a dark scratch, two pixels wide,
# running down the sky and across the barn roof.
d.line([(332, 0), (318, 480)], fill=(28, 28, 30), width=2)

# The dull day, applied overall: everything at 82%.
img = img.point(lambda v: int(v * 0.82))

png_path = os.path.join(OUT, "hillside.png")
ppm_path = os.path.join(OUT, "hillside.ppm")
img.save(png_path)
img.save(ppm_path)

pixels = list(img.getdata())
mean = sum(sum(p) / 3.0 for p in pixels) / len(pixels)
print(f"sample image: {img.size[0]}x{img.size[1]}")
print(f"hillside.png: {os.path.getsize(png_path)} bytes")
print(f"hillside.ppm: {os.path.getsize(ppm_path)} bytes")
print(f"mean brightness (0-255): {mean:.1f}")
