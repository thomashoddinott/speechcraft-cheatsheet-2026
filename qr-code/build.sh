#!/bin/sh
# Prints sheet.html (12 copies of qr-with-slogan.svg on A4) to qr-sheet.pdf.
# Edit the slogan or design in qr-with-slogan.svg, the grid in sheet.html, then run this.
cd "$(dirname "$0")"
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless --no-pdf-header-footer \
  --print-to-pdf=qr-sheet.pdf \
  "file://$PWD/sheet.html"
