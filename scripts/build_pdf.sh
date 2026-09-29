#!/usr/bin/env bash
set -euo pipefail

HW_DIR="${1:-}"

if [[ -z "$HW_DIR" ]]; then
  echo "ERROR: No homework directory provided."
  exit 1
fi

TEX_DIR="$HW_DIR/non-programming"
TEX="$TEX_DIR/main.tex"
OUTPDF="$TEX_DIR/main.pdf"

if [[ ! -f "$TEX" ]]; then
  echo "ERROR: $TEX not found."
  exit 1
fi

# Compile LaTeX -> PDF
pdflatex -interaction=nonstopmode -halt-on-error \
  -output-directory="$TEX_DIR" "$TEX"

echo "Generated $OUTPDF"
