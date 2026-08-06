# Usage

Run locally with

```bash
pixi run serve
```

Open <http://localhost:4000>. Stop the server with `Ctrl+C`.

To build without starting a server:

```bash
pixi run build
```

## Asset helpers

Convert a video to an animated WebP with:

```bash
assets/animations/convert-video-to-webp.sh input.mp4
```

The GitHub Actions workflow also uses `pdftoppm` and `cwebp` to refresh the CV preview images.
Pixi provides these tools locally.
