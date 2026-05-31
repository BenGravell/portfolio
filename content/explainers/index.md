---
permalink: /explainers
layout: page
title: Explainers
show_sidebar: false
---

<div class="explainers-layout">

  <div class="explainers-section">
    <div class="explainers-section-label">
      <span class="explainers-section-name">Planning &amp; Control</span>
    </div>
    <div class="explainers-bento-grid">
      <a class="explainers-bento-card" href="{{ '/explainers/pid' | relative_url }}">
        <p class="explainers-bento-title">PID</p>
        <p class="explainers-bento-desc">Interactive cart-pole demo with tunable gains, live disturbances, and real-time plots.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/lqr' | relative_url }}">
        <p class="explainers-bento-title">LQR</p>
        <p class="explainers-bento-desc">Solve the Riccati equation in-browser and watch penalty weights shape the closed-loop response.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/mpc' | relative_url }}">
        <p class="explainers-bento-title">MPC</p>
        <p class="explainers-bento-desc">A meta-algorithm that optimizes over planned future trajectories in receding-horizon fashion.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/mcts' | relative_url }}">
        <p class="explainers-bento-title">MCTS</p>
        <p class="explainers-bento-desc">The lookahead search algorithm powering AlphaGo, AlphaZero, and modern game AI.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/differential-flatness' | relative_url }}">
        <p class="explainers-bento-title">Differential Flatness</p>
        <p class="explainers-bento-desc">Plan trajectories in flat output space and map back to states and controls exactly.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/flask' | relative_url }}">
        <p class="explainers-bento-title">FLASK</p>
        <p class="explainers-bento-desc">Ultrafast sampling-based kinodynamic planning via differential flatness and SIMD parallelism.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/respect-the-unstable' | relative_url }}">
        <p class="explainers-bento-title">Respect the Unstable</p>
        <p class="explainers-bento-desc">Gunter Stein's inaugural Bode Lecture on fundamental limitations in control.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/explorations-in-dynamics' | relative_url }}">
        <p class="explainers-bento-title">Explorations in Dynamics</p>
        <p class="explainers-bento-desc">Physics in N dimensions, reaction-diffusion systems, and SmoothLife.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/permutation-invariant-nn-rl' | relative_url }}">
        <p class="explainers-bento-title">Permutation-Invariant Neural Networks for Reinforcement Learning</p>
        <p class="explainers-bento-desc">Architecture-induced robustness to observation permutations, without domain randomization.</p>
      </a>
    </div>
  </div>

  <div class="explainers-section">
    <div class="explainers-section-label">
      <span class="explainers-section-name">Optimization</span>
    </div>
    <div class="explainers-bento-grid">
      <a class="explainers-bento-card" href="{{ '/explainers/polyak-lojasiewicz' | relative_url }}">
        <p class="explainers-bento-title">Polyak-Łojasiewicz</p>
        <p class="explainers-bento-desc">A walkthrough proof of linear convergence of gradient descent under the PL inequality.</p>
      </a>
    </div>
  </div>

  <div class="explainers-section">
    <div class="explainers-section-label">
      <span class="explainers-section-name">AI for Autonomy</span>
    </div>
    <div class="explainers-bento-grid">
      <a class="explainers-bento-card" href="{{ '/explainers/waymo-ai' | relative_url }}">
        <p class="explainers-bento-title">Waymo AI</p>
        <p class="explainers-bento-desc">Waymo's approach to demonstrably safe AI using foundation model distillation.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/adversarial-training' | relative_url }}">
        <p class="explainers-bento-title">Adversarial Training &amp; Robot Safety</p>
        <p class="explainers-bento-desc">Why adversarially-trained classifiers can reduce rather than improve safety in robot learning.</p>
      </a>
    </div>
  </div>

</div>

<style>
.explainers-layout {
  display: flex;
  flex-direction: column;
  gap: 2.5rem;
  margin-top: 1.5rem;
}

.explainers-section {
  display: grid;
  grid-template-columns: 180px 1fr;
  align-items: start;
}

.explainers-section-label {
  padding-right: 1.25rem;
  padding-top: 0.6rem;
  border-right: 2px solid rgba(2, 107, 172, 0.22);
  align-self: stretch;
  display: flex;
  align-items: flex-start;
}

.explainers-section-name {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1.25rem;
  color: #026bac;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  line-height: 1.35;
}

.explainers-bento-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 12px;
  padding-left: 1.5rem;
}

.explainers-bento-card {
  display: flex;
  flex-direction: column;
  text-decoration: none !important;
  background: rgba(2, 107, 172, 0.05);
  border: 1.5px solid rgba(2, 107, 172, 0.15);
  border-radius: 10px;
  padding: 1rem 1.1rem 1.15rem;
  transition: background 0.18s ease, border-color 0.18s ease, transform 0.18s ease, box-shadow 0.18s ease;
}

.explainers-bento-card:hover {
  background: rgba(0, 168, 150, 0.05);
  border-color: rgba(0, 168, 150, 0.45);
  transform: translateY(-2px);
  box-shadow: 0 8px 28px rgba(0, 120, 138, 0.18);
  text-decoration: none !important;
}

.explainers-bento-title {
  font-family: 'Space Grotesk', sans-serif;
  font-weight: 700;
  font-size: 1rem;
  color: #026bac;
  margin-bottom: 0.4rem !important;
  line-height: 1.25;
}

.explainers-bento-desc {
  font-size: 0.875rem;
  color: #4a4a4a;
  line-height: 1.45;
  margin: 0 !important;
  flex: 1;
}

@media screen and (max-width: 1023px) {
  .explainers-bento-grid {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media screen and (max-width: 768px) {
  .explainers-section {
    grid-template-columns: 1fr;
  }
  .explainers-section-label {
    border-right: none;
    border-bottom: 2px solid rgba(2, 107, 172, 0.22);
    padding-right: 0;
    padding-bottom: 0.5rem;
    padding-top: 0;
    margin-bottom: 0.75rem;
    align-self: auto;
  }
  .explainers-bento-grid {
    padding-left: 0;
    grid-template-columns: 1fr;
  }
}
</style>
