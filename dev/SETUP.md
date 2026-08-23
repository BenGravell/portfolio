# Setup

Install [Ruby+Devkit](https://rubyinstaller.org/downloads/).

Then run this from the repository root:

```bash
ruby dev/setup.rb
```

The script installs the Bundler version selected by `Gemfile.lock`, installs dependencies, and verifies a complete site build.

See [DEV.md](DEV.md) for how to serve the site and asset maintenance tasks.
