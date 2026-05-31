---
permalink: /programming
layout: page
title: Programming
show_sidebar: false
---

Notes on programming practice, implementation choices, and the software side of building technical systems.

<div class="programming-layout">

  <div class="programming-bento-grid">
    <a class="programming-bento-card" href="{{ '/programming/art-and-practice' | relative_url }}">
      <p class="programming-bento-title">Art &amp; Practice</p>
      <p class="programming-bento-desc">Philosophy and practice of programming — timeless principles for writing good software.</p>
    </a>
    <a class="programming-bento-card" href="{{ '/programming/cpp' | relative_url }}">
      <p class="programming-bento-title">C++</p>
      <p class="programming-bento-desc">Libraries for numerical computing, linear algebra, and high-performance C++.</p>
    </a>
    <a class="programming-bento-card" href="{{ '/programming/python' | relative_url }}">
      <p class="programming-bento-title">Python</p>
      <p class="programming-bento-desc">Scientific computing, machine learning, dataframes, visualization, and type checking.</p>
    </a>
    <a class="programming-bento-card" href="{{ '/programming/interoperability' | relative_url }}">
      <p class="programming-bento-title">Interoperability</p>
      <p class="programming-bento-desc">Tools for C++/Python bindings and high-performance Python compilation.</p>
    </a>
    <a class="programming-bento-card" href="{{ '/programming/trajectory-optimization' | relative_url }}">
      <p class="programming-bento-title">Trajectory Optimization</p>
      <p class="programming-bento-desc">Gradient-based and sampling-based MPC software for robotics and control.</p>
    </a>
  </div>

</div>

<style>
.programming-layout {
  margin-top: 1.5rem;
}

.programming-bento-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 12px;
}

.programming-bento-card {
  display: flex;
  flex-direction: column;
  text-decoration: none !important;
  background: var(--color-card-bg);
  border: 1.5px solid var(--color-card-border);
  border-radius: 10px;
  padding: 1rem 1.1rem 1.15rem;
  transition: background 0.18s ease, border-color 0.18s ease, transform 0.18s ease, box-shadow 0.18s ease;
}

.programming-bento-card:hover {
  background: rgba(0, 168, 150, 0.08);
  border-color: rgba(0, 168, 150, 0.42);
  transform: translateY(-2px);
  box-shadow: 0 8px 28px rgba(0, 100, 120, 0.22);
  text-decoration: none !important;
}

.programming-bento-title {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1rem;
  color: var(--color-accent);
  margin-bottom: 0.4rem !important;
  line-height: 1.25;
}

.programming-bento-desc {
  font-size: 0.875rem;
  color: var(--color-text);
  line-height: 1.45;
  margin: 0 !important;
  flex: 1;
}

@media screen and (max-width: 768px) {
  .programming-bento-grid {
    grid-template-columns: 1fr;
  }
}
</style>
