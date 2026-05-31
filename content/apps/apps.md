---
permalink: /apps
layout: page
title: Apps
show_sidebar: false
---

<div class="apps-layout">

  <div class="apps-section">
    <div class="apps-section-label">
      <span class="apps-section-name">Planning &amp; Control</span>
    </div>
    <div class="apps-bento-grid">
      <a class="apps-bento-card" href="{{ '/nanotree' | relative_url }}">
        <p class="apps-bento-title">Nanotree</p>
        <p class="apps-bento-desc">Sampling-based path planning using a modified RRT* algorithm.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/nanotree.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
      <a class="apps-bento-card" href="{{ '/treetop' | relative_url }}">
        <p class="apps-bento-title">Treetop</p>
        <p class="apps-bento-desc">Sampling-based tree expansion and gradient-based trajectory optimization for a car-like vehicle.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/treetop.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
      <a class="apps-bento-card" href="{{ '/cartpole-optimal-control' | relative_url }}">
        <p class="apps-bento-title">Cartpole Optimal Control</p>
        <p class="apps-bento-desc">Learn about optimal control through the classic cartpole swing-up problem.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/cartpole-optimal-control.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>

    </div>
  </div>

  <div class="apps-section">
    <div class="apps-section-label">
      <span class="apps-section-name">Optimization &amp; Machine Learning</span>
    </div>
    <div class="apps-bento-grid">
      <a class="apps-bento-card" href="{{ '/terra' | relative_url }}">
        <p class="apps-bento-title">Terra</p>
        <p class="apps-bento-desc">Answer <em>"which country is right for me?"</em> using data-driven recommendations tailored to your preferences.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/terra.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
      <a class="apps-bento-card" href="{{ '/structura' | relative_url }}">
        <p class="apps-bento-title">Structura</p>
        <p class="apps-bento-desc">Find the most efficient material layout for a given load case.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/structura.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
      <a class="apps-bento-card" href="{{ '/gestura' | relative_url }}">
        <p class="apps-bento-title">Gestura</p>
        <p class="apps-bento-desc">Live predictions from a deep neural network trained to classify gestures from raw time-series sensor data.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/gestura.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
    </div>
  </div>

  <div class="apps-section">
    <div class="apps-section-label">
      <span class="apps-section-name">Art &amp; Culture</span>
    </div>
    <div class="apps-bento-grid">
      <a class="apps-bento-card" href="{{ '/mosaic-maker' | relative_url }}">
        <p class="apps-bento-title">Mosaic Maker</p>
        <p class="apps-bento-desc">Create mosaics by tiling thousands of images to reconstruct a target picture.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/mosaic-maker.jpg' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
      <a class="apps-bento-card" href="{{ '/coffee-finder' | relative_url }}">
        <p class="apps-bento-title">Coffee Finder</p>
        <p class="apps-bento-desc">Discover coffee shops in your area using location-based search.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/coffee-finder.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
      <a class="apps-bento-card" href="{{ '/bible-explorer' | relative_url }}">
        <p class="apps-bento-title">Bible Explorer</p>
        <p class="apps-bento-desc">Explore the text of the Bible through search, cross-referencing, and guided discovery.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/bible-explorer.png' | relative_url }}" alt="" loading="lazy">
        </div>
      </a>
    </div>
  </div>

</div>

<style>
.apps-layout {
  display: flex;
  flex-direction: column;
  gap: 2.5rem;
  margin-top: 1rem;
}

.apps-section {
  display: grid;
  grid-template-columns: 180px 1fr;
  align-items: start;
}

.apps-section-label {
  padding-right: 1.25rem;
  padding-top: 0.6rem;
  border-right: 2px solid var(--color-border-accent);
  align-self: stretch;
  display: flex;
  align-items: flex-start;
}

.apps-section-name {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1.25rem;
  color: var(--color-accent-dim);
  text-transform: uppercase;
  letter-spacing: 0.05em;
  line-height: 1.35;
}

.apps-bento-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: 12px;
  padding-left: 1.5rem;
}

.apps-bento-card {
  display: flex;
  flex-direction: column;
  text-decoration: none !important;
  background: var(--color-card-bg);
  border: 1.5px solid var(--color-card-border);
  border-radius: 10px;
  padding: 1rem 1.1rem 1.15rem;
  transition: background 0.18s ease, border-color 0.18s ease, transform 0.18s ease;
}

.apps-bento-card:hover {
  background: rgba(0, 168, 150, 0.08);
  border-color: rgba(0, 168, 150, 0.42);
  transform: translateY(-2px);
  text-decoration: none !important;
}

.apps-bento-title {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1rem;
  color: var(--color-accent);
  margin-bottom: 0.4rem !important;
  line-height: 1.25;
}

.apps-bento-desc {
  font-size: 0.875rem;
  color: var(--color-text);
  line-height: 1.45;
  margin: 0 !important;
  flex: 1;
}

.apps-bento-preview {
  margin-top: 1.25rem;
  aspect-ratio: 1 / 1;
  display: flex;
  align-items: center;
  justify-content: center;
}

.apps-bento-preview img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  display: block;
}

@media screen and (max-width: 1023px) {
  .apps-bento-grid {
    grid-template-columns: repeat(3, 1fr);
  }
}

@media screen and (max-width: 768px) {
  .apps-section {
    grid-template-columns: 1fr;
  }
  .apps-section-label {
    border-right: none;
    border-bottom: 2px solid var(--color-border-accent);
    padding-right: 0;
    padding-bottom: 0.5rem;
    padding-top: 0;
    margin-bottom: 0.75rem;
    align-self: auto;
  }
  .apps-bento-grid {
    padding-left: 0;
    grid-template-columns: 1fr;
  }
  .apps-bento-card {
    border-radius: 8px;
  }
}
</style>
