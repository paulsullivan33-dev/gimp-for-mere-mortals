# Installing GIMP

By the end of this chapter GIMP will be
on your machine, you will know which
version you got, and you will have made
the one settings change that makes the
program calmer to learn in. GIMP is
free, so every route below is a route to
the real program, not a trial.

## Where to get it

The project's home is **gimp.org**, and
its Downloads page is the front door: it
detects your system and offers the right
installer for Windows and macOS, and
directions for Linux. Two warnings,
learned by many before you. Download
from gimp.org itself, or from your
system's own software store — not from
a look-alike site that bundles the
program with "extra offers". And if a
site asks for money, close the tab: the
program costs nothing, always.

## Linux: your package manager first

On most Linux systems the package
manager already carries GIMP, and that
is the easiest install to keep updated.
On Debian and Ubuntu:

```bash
sudo apt update
sudo apt install gimp
gimp --version
```

The lab ran exactly this on Ubuntu
24.04 and got **GIMP 2.10.36** — the
long-serving 2.10 line — and every
batch-mode procedure in this guide was
verified against it. Your system may
offer 3.0 instead; chapter 1 explains
why either serves this guide.

Two other Linux routes exist. The
**Flatpak** from Flathub is the project's
own preferred package and tends to be
the newest version your distribution
does not yet carry. The **Snap** package
works too, though its confined folders
occasionally confuse readers when a
photo lives outside the home directory —
chapter 15 has the symptom and the fix.

## Windows and macOS

These two installs the guide describes
from the project's documentation rather
than demonstrating; the lab's machine
runs Linux, and `criteria.md` says so
plainly. In outline: on **Windows**, the
gimp.org installer is an ordinary setup
program — download, run, accept the
defaults, and GIMP lands in the Start
menu. On **macOS**, the download is a
disk image; open it and drag GIMP into
Applications. The first launch on a Mac
may need a right-click and **Open**,
because the program did not come from
the App Store. Both versions present
the same window the rest of this guide
describes.

## First launch, and one kindness

Start GIMP. The first launch is slow —
it is building its folders and taking
stock of fonts — and later launches are
quicker; do not mistake the first wait
for a fault.

Older GIMP versions open as a scatter
of separate windows: toolbox in one,
canvas in another, dialogs floating.
There is a kinder arrangement. In the
**Windows** menu, tick **Single-Window
Mode**, and the parts dock into one
window that behaves like other programs
you know. GIMP 3.0 starts this way by
default. This guide assumes the single
window from here on; nothing about the
work itself changes.

## The check

Run `gimp --version` in a terminal, or
open **Help → About** inside the
program. You should see a version —
2.10.something or 3.something — and the
program should open to an empty canvas
area with the toolbox at the left. If
both are true, you are installed, and
chapter 4 puts a photograph on that
canvas and makes your first honest edit:
a copy, brightened and cropped, exported
under a new name — the original never
touched.
