---
permalink: /software
layout: page
title: Software
show_sidebar: false
---

Notes on programming practice, implementation choices, and the software side of building technical systems.

<div class="software-layout">

  <div class="software-bento-grid">
    <a class="software-bento-card" href="{{ '/software/art-and-practice' | relative_url }}">
      <p class="software-bento-title">Art &amp; Practice</p>
      <p class="software-bento-desc">Philosophy and practice of programming — timeless principles for writing good software.</p>
    </a>
    <a class="software-bento-card" href="{{ '/software/cpp' | relative_url }}">
      <p class="software-bento-title">C++</p>
      <p class="software-bento-desc">Libraries for numerical computing, linear algebra, and high-performance C++.</p>
    </a>
    <a class="software-bento-card" href="{{ '/software/python' | relative_url }}">
      <p class="software-bento-title">Python</p>
      <p class="software-bento-desc">Scientific computing, machine learning, dataframes, visualization, and type checking.</p>
    </a>
    <a class="software-bento-card" href="{{ '/software/interoperability' | relative_url }}">
      <p class="software-bento-title">Interoperability</p>
      <p class="software-bento-desc">Tools for C++/Python bindings and high-performance Python compilation.</p>
    </a>
    <a class="software-bento-card" href="{{ '/software/trajectory-optimization' | relative_url }}">
      <p class="software-bento-title">Trajectory Optimization</p>
      <p class="software-bento-desc">Gradient-based and sampling-based MPC software for robotics and control.</p>
    </a>
  </div>

</div>

<style>
.software-layout {
  margin-top: 1.5rem;
}

.software-bento-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 12px;
}

.software-bento-card {
  display: flex;
  flex-direction: column;
  text-decoration: none !important;
  background: rgba(2, 107, 172, 0.05);
  border: 1.5px solid rgba(2, 107, 172, 0.15);
  border-radius: 10px;
  padding: 1rem 1.1rem 1.15rem;
  transition: background 0.18s ease, border-color 0.18s ease, transform 0.18s ease, box-shadow 0.18s ease;
}

.software-bento-card:hover {
  background: rgba(0, 168, 150, 0.05);
  border-color: rgba(0, 168, 150, 0.45);
  transform: translateY(-2px);
  box-shadow: 0 8px 28px rgba(0, 120, 138, 0.18);
  text-decoration: none !important;
}

.software-bento-title {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1rem;
  color: #026bac;
  margin-bottom: 0.4rem !important;
  line-height: 1.25;
}

.software-bento-desc {
  font-size: 0.875rem;
  color: #4a4a4a;
  line-height: 1.45;
  margin: 0 !important;
  flex: 1;
}

@media screen and (max-width: 768px) {
  .software-bento-grid {
    grid-template-columns: 1fr;
  }
}
</style>
