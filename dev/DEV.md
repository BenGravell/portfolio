# Development

This site was developed with Windows 11; scripts assume a Windows OS.

## Serve the site locally

Serve the site locally with

```bash
bundle exec jekyll serve
```

Open the server URL printed by Jekyll.

## Travelogue map geography

The Travelogue checks files into `assets/data/` so the production page does not depend on a map service at
runtime.

The atlas packages are distributed under the ISC license.
The files come from immutable, version-pinned jsDelivr package URLs.
The 110m GeoJSON comes from Natural Earth's public-domain vector data at its pinned v4.1.0 tag.
Versions, URLs, checksums, expected TopoJSON objects, and geometry counts live in
`dev/map-data-manifest.psd1` so the downloader and checker share one source of
truth.

### `countries-50m.json`

- Repository file: `assets/data/countries-50m.json`
- Source: [`world-atlas` 2.0.2](https://github.com/topojson/world-atlas)
- Geography: Natural Earth 4.1.0 Admin-0 country boundaries at 1:50m
- Contents: TopoJSON `countries` and dissolved `land` objects
- SHA-256: `04342CDC1E3016BCD7DB1630DE95684D67B79FE3C8C460321E87AEF469502394`

### `states-10m.json`

- Repository file: `assets/data/states-10m.json`
- Source: [`us-atlas` 3.0.1](https://github.com/topojson/us-atlas)
- Geography: U.S. Census Bureau 2017 cartographic state boundaries, quantized and simplified but not projected
- Contents: TopoJSON `states` and `nation` objects
- SHA-256: `D76B391CCFA8BFF601D51E3E3DA5D43A89FA46CD5CACA72CE731B383BE5596D0`

### `countries-110m.geojson`

- Repository file: `assets/data/countries-110m.geojson`
- Source: [`natural-earth-vector` 4.1.0](https://github.com/nvkelso/natural-earth-vector/tree/v4.1.0)
- Geography: Natural Earth Admin-0 countries at 1:110m
- Contents: GeoJSON `FeatureCollection` with 177 country features
- Runtime use: responsive Travelogue motion and the Journey Equal Earth map
- SHA-256: `A4D67EAC9C75D5B6F20170D2B07BB53EA791536B0C8E5EBAE3BA94DF093F76E0`

### Reproduce the checked-in files

From the repository root, run:

```powershell
pwsh -File dev/download-map-data.ps1
```

The downloader retrieves each pinned asset to a temporary file, validates its
SHA-256 checksum, and only then replaces the repository copy.

### Validate the checked-in files

From the repository root, run:

```powershell
pwsh -File dev/check-map-data.ps1
```

The checker validates file presence, SHA-256 checksums, TopoJSON type and
object names, and expected country/state geometry counts. It exits nonzero if
anything differs from the manifest.

## Animated WebP conversion

`dev/convert-video-to-webp.sh` converts an MP4, MOV, WebM, GIF, or other
FFmpeg-readable video into a looping animated WebP suitable for the image-based
home-page gallery. It requires FFmpeg with the `libwebp_anim` encoder.

Run it from the repository root:

```bash
./dev/convert-video-to-webp.sh input.mp4 [output.webp]
```

When the output path is omitted, the script writes beside the input with a
`.webp` extension. `WIDTH`, `FPS`, `QUALITY`, `COMPRESSION`, and `LOOP`
environment variables override its encoding defaults; the script header lists
their values and an example.
