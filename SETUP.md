# Setup

## Requirements

You need an internet connection, [Git](https://git-scm.com/), and [Pixi](https://pixi.prefix.dev/).

## Spin up from scratch

From the repository root, run:

```bash
pixi run setup
```

The same command works on Linux, macOS, and Windows.

Pixi installs Ruby, a compiler toolchain for native gems, FFmpeg, Poppler, and WebP tools.
The setup task then installs Bundler, runs `bundle install` for the gems pinned in `Gemfile.lock`, and builds the site with Jekyll to verify the installation.
