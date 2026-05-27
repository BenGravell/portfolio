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
      <a class="apps-bento-card" href="{{ '/lqr-designer' | relative_url }}">
        <p class="apps-bento-title">LQR Designer</p>
        <p class="apps-bento-desc">Design LQR controllers by tuning cost matrices and seeing the effect on the closed-loop system.</p>
        <div class="apps-bento-preview" aria-hidden="true">
          <img src="{{ '/assets/images/app/lqr-designer.png' | relative_url }}" alt="" loading="lazy">
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
          <img src="{{ '/assets/images/app/mosaic-maker.png' | relative_url }}" alt="" loading="lazy">
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
  border-right: 2px solid rgba(2, 107, 172, 0.22);
  align-self: stretch;
  display: flex;
  align-items: flex-start;
}

/* ── Larger, more readable section group header ── */
.apps-section-name {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1rem;       /* was 0.78rem */
  color: #026bac;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  line-height: 1.35;
}

.apps-bento-grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: 1fr;
  gap: 12px;
  padding-left: 1.5rem;
}

/* ── Card — position:relative needed to anchor the tooltip ── */
.apps-bento-card {
  position: relative;
  display: flex;
  flex-direction: column;
  text-decoration: none !important;
  background: rgba(2, 107, 172, 0.05);
  border: 1.5px solid rgba(2, 107, 172, 0.15);
  border-radius: 10px;
  padding: 1rem 1.1rem 1.15rem;
  transition: background 0.18s ease, border-color 0.18s ease, transform 0.18s ease, box-shadow 0.18s ease;
}

.apps-bento-card:hover {
  background: rgba(0, 168, 150, 0.05);
  border-color: rgba(0, 168, 150, 0.45);
  transform: translateY(-2px);
  box-shadow: 0 8px 28px rgba(0, 120, 138, 0.18);
  text-decoration: none !important;
}

.apps-bento-title {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1rem;
  color: #026bac;
  margin-bottom: 0.4rem !important;
  line-height: 1.25;
}

.apps-bento-desc {
  font-size: 0.875rem;
  color: #4a4a4a;
  line-height: 1.45;
  margin: 0 !important;
  flex: 1;
}

/* ── Hover preview tooltip ── */
.apps-bento-preview {
  position: absolute;
  /* Sit above the card by default; flips via JS if near viewport top would clip */
  bottom: calc(100% + 10px);
  left: 50%;
  transform: translateX(-50%) translateY(6px);
  width: 240px;
  border-radius: 10px;
  box-shadow: 0 10px 36px rgba(0, 0, 0, 0.22), 0 2px 8px rgba(0, 0, 0, 0.10);
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.18s ease, transform 0.18s ease;
  z-index: 200;
  overflow: hidden;
  background: #fff;   /* fallback while image loads */
}

/* Down-arrow pointer from tooltip to card */
.apps-bento-preview::after {
  content: '';
  position: absolute;
  top: 100%;
  left: 50%;
  transform: translateX(-50%);
  border: 7px solid transparent;
  border-top-color: #fff;
  pointer-events: none;
}

.apps-bento-card:hover .apps-bento-preview {
  opacity: 1;
  transform: translateX(-50%) translateY(0);
}

.apps-bento-preview img {
  width: 100%;
  height: auto;
  display: block;
}

/* Hide tooltip on touch screens where hover isn't meaningful */
@media (hover: none) {
  .apps-bento-preview { display: none; }
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
    border-bottom: 2px solid rgba(2, 107, 172, 0.22);
    padding-right: 0;
    padding-bottom: 0.5rem;
    padding-top: 0;
    margin-bottom: 0.75rem;
    align-self: auto;
  }
  .apps-bento-grid {
    padding-left: 0;
    grid-template-columns: repeat(2, 1fr);
  }
}
</style>
