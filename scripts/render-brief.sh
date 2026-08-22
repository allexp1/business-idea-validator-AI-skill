#!/usr/bin/env bash
# render-brief.sh — render a validation brief (HTML) to PDF via a headless browser.
#
#   scripts/render-brief.sh --in brief.html [--out Brief.pdf] [--open] [--force]
#
# Detects Chrome / Chromium / Edge / Brave on macOS and Linux. If --out is
# omitted, writes alongside the input with a .pdf extension. Existing files are
# never overwritten: the name gains -2, -3, ... unless --force is given.
set -euo pipefail

IN=""; OUT=""; OPEN=0; FORCE=0; TIMEOUT=60

usage() {
  cat <<'USAGE'
Usage: render-brief.sh --in <file.html> [--out <file.pdf>] [--open] [--force]

  --in    Source HTML file (required)
  --out   Destination PDF (default: same path/name with .pdf)
  --open  Open the PDF when done
  --force Overwrite an existing destination instead of appending -2, -3, ...
  --timeout N  Seconds to wait for the browser (default 60)
USAGE
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --in)    IN="${2:-}"; shift 2 ;;
    --out)   OUT="${2:-}"; shift 2 ;;
    --open)  OPEN=1; shift ;;
    --force) FORCE=1; shift ;;
    --timeout) TIMEOUT="${2:-60}"; shift 2 ;;
    -h|--help) usage; exit 0 ;;
    *) echo "render-brief.sh: unknown argument '$1'" >&2; usage >&2; exit 2 ;;
  esac
done

[[ -n "$IN" ]] || { echo "render-brief.sh: --in is required" >&2; usage >&2; exit 2; }
[[ -f "$IN" ]] || { echo "render-brief.sh: no such file: $IN" >&2; exit 2; }

# Absolute path to the input (file:// URLs must be absolute).
IN_ABS="$(cd "$(dirname "$IN")" && pwd)/$(basename "$IN")"
[[ -n "$OUT" ]] || OUT="${IN_ABS%.*}.pdf"

# Absolute path to the output, whose directory must already exist.
OUT_DIR="$(cd "$(dirname "$OUT")" 2>/dev/null && pwd)" || {
  echo "render-brief.sh: output directory does not exist: $(dirname "$OUT")" >&2; exit 2; }
OUT_ABS="${OUT_DIR}/$(basename "$OUT")"

# Never clobber: Brief.pdf -> Brief-2.pdf -> Brief-3.pdf ...
if [[ -e "$OUT_ABS" && $FORCE -eq 0 ]]; then
  base="${OUT_ABS%.pdf}"; n=2
  while [[ -e "${base}-${n}.pdf" ]]; do n=$((n + 1)); done
  OUT_ABS="${base}-${n}.pdf"
fi

find_browser() {
  local candidates=(
    "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
    "/Applications/Chromium.app/Contents/MacOS/Chromium"
    "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge"
    "/Applications/Brave Browser.app/Contents/MacOS/Brave Browser"
  )
  local c
  for c in "${candidates[@]}"; do
    [[ -x "$c" ]] && { printf '%s' "$c"; return 0; }
  done
  for c in google-chrome google-chrome-stable chromium chromium-browser \
           microsoft-edge microsoft-edge-stable brave-browser; do
    if command -v "$c" >/dev/null 2>&1; then command -v "$c"; return 0; fi
  done
  return 1
}

BROWSER="$(find_browser)" || {
  cat >&2 <<MSG
render-brief.sh: no Chromium-family browser found.

The HTML brief is intact at:
  $IN_ABS

To get a PDF, either install Google Chrome (https://google.com/chrome) and
re-run this script, or open the HTML in any browser and print to PDF.
MSG
  exit 3
}

# Chrome writes the PDF and then, on some versions, does not exit. Run it in
# the background and stop waiting once it exits OR the deadline passes; the
# PDF's existence is what decides success, not the browser's exit code.
# Deliberately no --user-data-dir and no --no-sandbox: a fresh profile is what
# makes Chrome 151 hang here, and --no-sandbox is not a flag worth shipping.
"$BROWSER" \
  --headless \
  --disable-gpu \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT_ABS" \
  "file://${IN_ABS}" >/dev/null 2>&1 &
BPID=$!

waited=0
while kill -0 "$BPID" 2>/dev/null && [[ $waited -lt $TIMEOUT ]]; do
  sleep 1; waited=$((waited + 1))
done
if kill -0 "$BPID" 2>/dev/null; then
  kill -9 "$BPID" 2>/dev/null || true
fi
wait "$BPID" 2>/dev/null || true

if [[ ! -s "$OUT_ABS" ]]; then
  echo "render-brief.sh: $(basename "$BROWSER") produced no PDF within ${TIMEOUT}s." >&2
  echo "The HTML brief is intact at: $IN_ABS" >&2
  exit 4
fi

echo "$OUT_ABS"

if [[ $OPEN -eq 1 ]]; then
  if command -v open    >/dev/null 2>&1; then open "$OUT_ABS"
  elif command -v xdg-open >/dev/null 2>&1; then xdg-open "$OUT_ABS" >/dev/null 2>&1 &
  fi
fi
