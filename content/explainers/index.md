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

  <div class="explainers-section">
    <div class="explainers-section-label">
      <span class="explainers-section-name">Original Research</span>
    </div>
    <div class="explainers-bento-grid">
      <a class="explainers-bento-card" href="{{ '/explainers/lqrm-policy-gradient' | relative_url }}">
        <p class="explainers-bento-title">Policy Gradient for LQR with Multiplicative Noise</p>
        <p class="explainers-bento-desc">Robust control as a gradient-dominated objective, with global convergence guarantees for policy gradient.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/bootstrapped-multiplicative-noise' | relative_url }}">
        <p class="explainers-bento-title">Bootstrapped Multiplicative Noise</p>
        <p class="explainers-bento-desc">Adaptive control that sizes its robustness to the actual estimation uncertainty in finite, noisy data.</p>
      </a>
      <a class="explainers-bento-card" href="{{ '/explainers/risk-averse-rrt' | relative_url }}">
        <p class="explainers-bento-title">Risk-Averse RRT* Planning</p>
        <p class="explainers-bento-desc">Distributionally robust sampling-based planning and tracking for nonlinear robots under uncertainty.</p>
      </a>
    </div>
  </div>

</div>