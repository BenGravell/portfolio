---
permalink: /resources
layout: page
title: Resources
show_sidebar: false
---

<div class="resources-layout">

  <div class="resources-bento-grid">
    <a class="resources-bento-card" href="{{ '/explainers' | relative_url }}">
      <p class="resources-bento-title">Explainers</p>
      <p class="resources-bento-desc">Guided walkthroughs of ideas that benefit from more context - interactive demos, proofs, and commentary.</p>
    </a>
    <a class="resources-bento-card" href="{{ '/teaching' | relative_url }}">
      <p class="resources-bento-title">Teaching</p>
      <p class="resources-bento-desc">Course materials, lecture notes, and educational resources from robotics and controls courses.</p>
    </a>
    <a class="resources-bento-card" href="{{ '/programming' | relative_url }}">
      <p class="resources-bento-title">Programming</p>
      <p class="resources-bento-desc">Notes on programming practice, implementation choices, and curated libraries across C++, Python, and robotics toolchains.</p>
    </a>
    <a class="resources-bento-card" href="{{ '/blogs' | relative_url }}">
      <p class="resources-bento-title">Blogs</p>
      <p class="resources-bento-desc">Research blogs and writing worth following across machine learning, optimization, and control.</p>
    </a>
    <a class="resources-bento-card" href="{{ '/assets' | relative_url }}">
      <p class="resources-bento-title">Assets</p>
      <p class="resources-bento-desc">Sources for permissively licensed images, illustrations, icons, and audio.</p>
    </a>
  </div>

</div>

<style>
.resources-layout {
  margin-top: 1.5rem;
}

.resources-bento-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 12px;
}

.resources-bento-card {
  display: flex;
  flex-direction: column;
  text-decoration: none !important;
  background: var(--color-card-bg);
  border: 1.5px solid var(--color-card-border);
  border-radius: 10px;
  padding: 1rem 1.1rem 1.15rem;
  transition: background 0.18s ease, border-color 0.18s ease, transform 0.18s ease, box-shadow 0.18s ease;
}

.resources-bento-card:hover {
  background: rgba(0, 168, 150, 0.08);
  border-color: rgba(0, 168, 150, 0.42);
  transform: translateY(-2px);
  box-shadow: 0 8px 28px rgba(0, 100, 120, 0.22);
  text-decoration: none !important;
}

.resources-bento-title {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1rem;
  color: var(--color-accent);
  margin-bottom: 0.4rem !important;
  line-height: 1.25;
}

.resources-bento-desc {
  font-size: 0.875rem;
  color: var(--color-text);
  line-height: 1.45;
  margin: 0 !important;
  flex: 1;
}

@media screen and (max-width: 768px) {
  .resources-bento-grid {
    grid-template-columns: 1fr;
  }
}
</style>
