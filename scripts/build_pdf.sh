#!/usr/bin/env bash
set -euo pipefail

TEX="main.tex"
OUTPDF="Sara_Norouzinia_Resume.pdf"
OUTDIR="."

SOFFICE="/Applications/LibreOffice.app/Contents/MacOS/soffice"

if [[ ! -f "$TEX" ]]; then
  echo "ERROR: $TEX not found in repo root."
  exit 1
fi

# Compile LaTeX -> PDF 
pdflatex -interaction=nonstopmode -halt-on-error \
 -output-directory="$OUTDIR" "$TEX"


GENERATED="$(basename "$TEX" .tex).pdf"

# Ensure the output is exactly Sara_Norouzinia_Resume.pdf
if [[ "$GENERATED" != "$OUTPDF" ]]; then
  mv -f "$GENERATED" "$OUTPDF"
fi

echo "Generated $OUTPDF"
