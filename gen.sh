#!/usr/bin/env bash

set -eu

gen_pdf() {
    inkscape --file="$1"                        \
             --export-pdf="${1%.svg}.pdf"       \
             --export-area-page                 \
             --export-dpi=600
}

gen_pdf otoshidama.svg
gen_pdf envelope-marks.svg
pdfunite otoshidama.pdf envelope-marks.pdf envelope.pdf
