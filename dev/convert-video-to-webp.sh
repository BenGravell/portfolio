#!/usr/bin/env bash
#
# convert-video-to-webp.sh — convert a video (mp4/mov/webm/gif/…) to an
# animated WebP for use as a lightweight, looping card animation.
#
# WebP animations are far smaller than the source video and, unlike <video>,
# drop into an <img> tag — which is how the home-page bento gallery renders
# the Apps card (see _includes/hero-gallery.html).
#
# Requires ffmpeg built with libwebp (the libwebp_anim encoder).
#
# Usage from the repository root:
#   ./dev/convert-video-to-webp.sh input.mp4 [output.webp]
#
# If output is omitted, it is the input path with a .webp extension.
#
# Tunables (override via environment variable):
#   WIDTH=960      output width in px; height auto-scales, keeping aspect ratio
#   FPS=20         output frame rate
#   QUALITY=75     0–100, higher = better quality / larger file (lossy)
#   COMPRESSION=6  0–6 encoder effort, higher = smaller file / slower encode
#   LOOP=0         0 = loop forever, N = loop N times
#
# Example (smaller, lower-fps):
#   WIDTH=720 FPS=15 ./dev/convert-video-to-webp.sh assets/animations/foo.mp4
#
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 input-video [output.webp]" >&2
  exit 1
fi

INPUT="$1"
OUTPUT="${2:-${INPUT%.*}.webp}"

WIDTH="${WIDTH:-960}"
FPS="${FPS:-20}"
QUALITY="${QUALITY:-75}"
COMPRESSION="${COMPRESSION:-6}"
LOOP="${LOOP:-0}"

if [ ! -f "$INPUT" ]; then
  echo "error: input not found: $INPUT" >&2
  exit 1
fi

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "error: ffmpeg not found on PATH" >&2
  exit 1
fi

echo "Converting $INPUT -> $OUTPUT (width=$WIDTH fps=$FPS q=$QUALITY)"

ffmpeg -hide_banner -y -i "$INPUT" \
  -vcodec libwebp_anim \
  -filter:v "fps=fps=${FPS},scale=${WIDTH}:-1:flags=lanczos" \
  -lossless 0 \
  -compression_level "$COMPRESSION" \
  -q:v "$QUALITY" \
  -preset picture \
  -loop "$LOOP" \
  -an -vsync 0 \
  "$OUTPUT"

echo "Done: $OUTPUT ($(du -h "$OUTPUT" | cut -f1))"
