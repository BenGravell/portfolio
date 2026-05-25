---
permalink: /publications
layout: page
title: Publications
subtitle: My Peer-Reviewed & Published Research
show_sidebar: false
---

<style>
.author-chips { display: flex; flex-wrap: wrap; gap: 0.4rem 0.8rem; margin: 0.4rem 0 0.2rem; }
.pub-links { display: flex; flex-wrap: wrap; gap: 0.4rem; margin: 0.5rem 0 0.3rem; }
.pub-links-kb { display: flex; flex-wrap: wrap; gap: 0.4rem; margin: 0 0 0.5rem; }
.chip {
  display: inline-flex; align-items: center;
  padding: 0.2rem 0.75rem; border-radius: 999px;
  font-size: 0.82rem; font-weight: 500; text-decoration: none !important;
  white-space: nowrap; transition: filter 0.12s;
}
.chip:hover { filter: brightness(0.9); text-decoration: none !important; }
.chip-link { background: #e8f0fe; color: #1558d6; }
.chip-kb {
  background: linear-gradient(135deg, #6366f1 0%, #8b5cf6 100%);
  color: #fff;
}
.chip-kb:hover { filter: brightness(1.12); }
.chip-split {
  display: inline-flex; border-radius: 999px; overflow: hidden;
  font-size: 0.82rem; font-weight: 500; white-space: nowrap;
}
.chip-split-left {
  display: inline-flex; align-items: center;
  padding: 0.2rem 0.75rem;
  background: #f1f3f4; color: #202124; text-decoration: none !important;
  border-right: 1px solid rgba(0,0,0,0.12); transition: filter 0.12s;
}
.chip-split-left:hover { filter: brightness(0.9); }
.chip-split-right {
  display: inline-flex; align-items: center;
  padding: 0.2rem 0.75rem;
  background: #eef6e0; color: #3a6b0e; font-size: 0.76rem; text-decoration: none !important;
  transition: filter 0.12s;
}
.chip-split-right:hover { filter: brightness(0.9); }

/* Figures */
.pub-figure {
  margin: 0.75rem 0 1.5rem;
  display: inline-block;
  cursor: zoom-in;
  max-width: 100%;
}
.pub-figure img {
  display: block;
  max-width: 100%;
  max-height: 280px;
  object-fit: contain;
  border-radius: 6px;
  border: 1px solid #e0e0e0;
  transition: box-shadow 0.15s;
}
.pub-figure:hover img { box-shadow: 0 4px 18px rgba(0,0,0,0.18); }
.pub-figure figcaption {
  font-size: 0.8rem;
  color: #555;
  margin-top: 0.35rem;
  font-style: italic;
  max-width: 480px;
}

/* Modal */
#pub-modal {
  display: none;
  position: fixed;
  inset: 0;
  background: rgba(0,0,0,0.88);
  z-index: 9999;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}
#pub-modal.active { display: flex; }
#pub-modal-img-wrap {
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  max-width: 90vw;
  max-height: 78vh;
}
#pub-modal-img {
  max-width: 90vw;
  max-height: 78vh;
  object-fit: contain;
  transform-origin: center center;
  transition: transform 0.15s ease;
  border-radius: 4px;
  user-select: none;
}
#pub-modal-controls {
  display: flex;
  gap: 0.5rem;
  margin-top: 1rem;
}
.modal-btn {
  background: rgba(255,255,255,0.15);
  color: #fff;
  border: 1px solid rgba(255,255,255,0.3);
  border-radius: 6px;
  padding: 0.35rem 1rem;
  cursor: pointer;
  font-size: 1.1rem;
  line-height: 1;
  transition: background 0.12s;
}
.modal-btn:hover { background: rgba(255,255,255,0.28); }
#pub-modal-close {
  position: fixed;
  top: 1rem;
  right: 1.5rem;
  color: rgba(255,255,255,0.85);
  font-size: 2rem;
  cursor: pointer;
  background: none;
  border: none;
  line-height: 1;
  padding: 0.25rem 0.5rem;
}
#pub-modal-close:hover { color: #fff; }
</style>

<div id="pub-modal">
  <button id="pub-modal-close" aria-label="Close">&#x2715;</button>
  <div id="pub-modal-img-wrap">
    <img id="pub-modal-img" src="" alt="">
  </div>
  <div id="pub-modal-controls">
    <button class="modal-btn" id="modal-zoom-in" aria-label="Zoom in">&#x2b;</button>
    <button class="modal-btn" id="modal-zoom-reset" aria-label="Reset zoom">&#x25a2;</button>
    <button class="modal-btn" id="modal-zoom-out" aria-label="Zoom out">&#x2212;</button>
  </div>
</div>

# Data-driven Control & Planning for Uncertain Complex Systems

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
</div>

The University of Texas at Dallas  
2022

<div class="pub-links">
<a class="chip chip-link" href="https://utd-ir.tdl.org/items/34a39212-8423-4e4c-a750-75f140571af8">UT Dallas&thinsp;↗</a>
<a class="chip chip-link" href="https://drive.google.com/file/d/13I6KrFhuXfxlD99fMNhOvL0f9XBD1JE5/view">Dissertation&thinsp;↗</a>
<a class="chip chip-link" href="https://drive.google.com/file/d/1QYGjjspMLk2Y-WizSozRoDu1YB-cSjUh/view">Oral Defense Slides&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2022_gravell_data_driven_control_and/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2022_gravell_data_driven_control_and.jpg" alt="Dissertation overview figure">
  <figcaption>Overview of data-driven control and planning framework under multiplicative noise uncertainty.</figcaption>
</figure>

# Anomaly Detection Under Multiplicative Noise Model Uncertainty

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://venkatramanrenganathan.github.io/">Venkatraman Renganathan&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-1420-2140">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="http://justinruths.com/">Justin Ruths&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-9132-2229">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

American Control Conference (ACC)  
2022

<div class="pub-links">
<a class="chip chip-link" href="https://ieeexplore.ieee.org/document/9647027">IEEE Xplore&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2103.15228">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2103_15228/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2103_15228.jpg" alt="Anomaly detection ROC curve under multiplicative noise uncertainty">
  <figcaption>Detection performance across noise uncertainty levels, showing ROC curves under varying multiplicative noise model mismatch.</figcaption>
</figure>

# Robust Data-Driven Output Feedback Control via Bootstrapped Multiplicative Noise

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://imanshames.blog/">Iman Shames&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0001-7308-3546">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler H. Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

Learning for Dynamics and Control (L4DC)  
2022

<div class="pub-links">
<a class="chip chip-link" href="https://proceedings.mlr.press/v168/gravell22a.html">PMLR&thinsp;↗</a>
<a class="chip chip-link" href="https://personal.utdallas.edu/~ths150130/papers/RobustDataDrivenOutputFeedback.pdf">UT Dallas&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2205_05119">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2205_05119.jpg" alt="Robust output feedback control closed-loop trajectory comparison">
  <figcaption>Closed-loop state trajectories comparing robust bootstrapped controller against nominal data-driven design under model uncertainty.</figcaption>
</figure>

# Finite-Sample Analysis of Linear System Identification under Multiplicative Noise from Multiple Trajectory Data

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://yuxing-1.github.io/">Yu Xing&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-2641-2962">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://scholar.google.com/citations?user=dopvdIgAAAAJ">Xingkang He&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-5744-1371">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://people.kth.se/~kallej/">Karl H. Johansson&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0001-9940-5929">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler H. Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

Automatica  
2021

<div class="pub-links">
<a class="chip chip-link" href="https://www.sciencedirect.com/science/article/pii/S0005109822003454">ScienceDirect&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2106.16078">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2106_16078/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2106_16078.jpg" alt="Finite-sample identification error bounds under multiplicative noise">
  <figcaption>Finite-sample identification error bounds as a function of trajectory count and noise magnitude, comparing multi-trajectory estimation methods.</figcaption>
</figure>

# Policy Iteration for Linear Quadratic Games With Stochastic Parameters

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://scholar.google.co.th/citations?user=I8mnKg0AAAAJ">Karthik Ganapathy&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-4719-7843">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

Conference on Decision and Control (CDC)  
2021

<div class="pub-links">
<a class="chip chip-link" href="https://ieeexplore.ieee.org/abstract/document/9115001">IEEE Xplore&thinsp;↗</a>
<a class="chip chip-link" href="https://personal.utdallas.edu/~tyler.summers/papers/GravellGanapathySummers_LCSS2020.pdf">UT Dallas&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2021_gravell_policy_iteration_for_linear/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2021_gravell_policy_iteration_for_linear.jpg" alt="Policy iteration convergence for stochastic LQ games">
  <figcaption>Convergence of policy iteration to Nash equilibrium strategies in a linear quadratic game with stochastic multiplicative parameters.</figcaption>
</figure>

# Centralized Collision-free Polynomial Trajectories and Goal Assignment for Aerial Swarms

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler H. Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

IFAC Control Engineering Practice (CEP)  
2021

<div class="pub-links">
<a class="chip chip-link" href="https://www.sciencedirect.com/science/article/abs/pii/S0967066121000307">ScienceDirect&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2101.08829">arXiv&thinsp;↗</a>
<a class="chip chip-link" href="https://youtu.be/OapaAQAGWDE">YouTube&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2101_08829/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2101_08829.jpg" alt="Collision-free polynomial trajectories for aerial swarm">
  <figcaption>Centralized polynomial trajectory plans for a swarm of quadrotors, showing simultaneous goal assignment and collision avoidance.</figcaption>
</figure>

# Approximate Midpoint Policy Iteration for Linear Quadratic Control

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler H. Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

Learning for Dynamics and Control (L4DC)  
2021

<div class="pub-links">
<a class="chip chip-link" href="https://proceedings.mlr.press/v144/gravell21a.html">PMLR&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2011.14212">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2011_14212/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2011_14212.jpg" alt="Midpoint policy iteration convergence and sample efficiency">
  <figcaption>Sample efficiency comparison of approximate midpoint policy iteration against standard policy gradient methods on LQR benchmarks.</figcaption>
</figure>

# Risk-Averse RRT\* Planning with Nonlinear Steering and Tracking Controllers for Nonlinear Robotic Systems Under Uncertainty

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://sites.google.com/view/snsafaoui">Sleiman Safaoui&thinsp;↗</a><a class="chip-split-right" href="http://orcid.org/0000-0003-2408-4555">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin J. Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://venkatramanrenganathan.github.io/">Venkatraman Renganathan&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-1420-2140">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler H. Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

IEEE/RSJ International Conference on Intelligent Robots and Systems (IROS)  
2021

<div class="pub-links">
<a class="chip chip-link" href="https://doi.org/10.1109/IROS51168.2021.9636834">IEEE Xplore&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2103.05572">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2103_05572/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2103_05572.jpg" alt="Risk-averse RRT* planned paths for nonlinear robot under uncertainty">
  <figcaption>Risk-averse RRT* paths for a nonlinear robotic system navigating an obstacle-dense environment, with chance-constraint satisfaction under uncertainty.</figcaption>
</figure>

# Stochastic Stability via Robustness of Linear Systems

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

Conference on Decision and Control (CDC)  
2021

<div class="pub-links">
<a class="chip chip-link" href="https://doi.org/10.1109/CDC45484.2021.9683784">IEEE Xplore&thinsp;↗</a>
<a class="chip chip-link" href="https://personal.utdallas.edu/~ths150130/papers/GravellSummersCDC2021.pdf">UT Dallas&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2021_gravell_stochastic_stability_via_robustness/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2021_gravell_stochastic_stability_via_robustness.jpg" alt="Stochastic stability region comparison via robustness margin">
  <figcaption>Characterization of mean-square stability regions for linear systems under multiplicative noise, linked to classical robustness margins.</figcaption>
</figure>

# Learning Robust Control for LQR systems with Multiplicative Noise via Policy Gradient

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://mohajerinesfahani.github.io/">Peyman Mohajerin Esfahani&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-1286-8782">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

IEEE Transactions on Automatic Control (TAC)  
2020

<div class="pub-links">
<a class="chip chip-link" href="https://ieeexplore.ieee.org/document/9254115">IEEE Xplore&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/1905.13547">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/1905_13547/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/1905_13547.jpg" alt="Policy gradient convergence landscape for robust LQR">
  <figcaption>Cost landscape and gradient flow for policy gradient optimization of an LQR controller under multiplicative noise, showing convergence to the robust optimal policy.</figcaption>
</figure>

# Robust Control Design for Linear Systems via Multiplicative Noise

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://mohajerinesfahani.github.io/">Peyman Mohajerin Esfahani&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-1286-8782">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

IFAC World Congress  
2020

<div class="pub-links">
<a class="chip chip-link" href="https://doi.org/10.1016/j.ifacol.2020.12.1268">ScienceDirect&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2004.08019">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2004_08019/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2004_08019.jpg" alt="Robust control design via multiplicative noise: closed-loop performance">
  <figcaption>Closed-loop performance comparison between multiplicative-noise-based robust controller and H-infinity design across a range of perturbation levels.</figcaption>
</figure>

# Linear System Identification under Multiplicative Noise from Multiple Trajectory Data

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://yuxing-1.github.io/">Yu Xing&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-2641-2962">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://scholar.google.com/citations?user=dopvdIgAAAAJ">Xingkang He&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-5744-1371">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://people.kth.se/~kallej/">Karl H. Johansson&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0001-9940-5929">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler H. Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

American Control Conference (ACC)  
2020

<div class="pub-links">
<a class="chip chip-link" href="https://ieeexplore.ieee.org/document/9147756">IEEE Xplore&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2002.06613">arXiv (long)&thinsp;↗</a>
<a class="chip chip-link" href="https://people.kth.se/~kallej/papers/network_acc20xing.pdf">KTH (short)&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2002_06613/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2002_06613.jpg" alt="System identification accuracy from multiple short trajectories under multiplicative noise">
  <figcaption>Estimation accuracy of system matrices from multiple short trajectories under multiplicative noise, demonstrating improved sample efficiency over single-trajectory methods.</figcaption>
</figure>

# Robust Learning-Based Control via Bootstrapped Multiplicative Noise

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler H. Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

Learning for Dynamics and Control (L4DC)  
2020

<div class="pub-links">
<a class="chip chip-link" href="https://proceedings.mlr.press/v120/gravell20a.html">PMLR&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/2002.10069">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2002_10069/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2002_10069.jpg" alt="Bootstrapped multiplicative noise robust control closed-loop trajectories">
  <figcaption>Closed-loop trajectory comparison between bootstrapped robust controller and nominal learned controller under plant uncertainty.</figcaption>
</figure>

# Sparse Optimal Control of Networks with Multiplicative Noise via Policy Gradient

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://nccr-automation.ch/about/people/yi-guo-0">Yi Guo&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0001-9589-3806">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

IFAC Workshop on Distributed Estimation and Control in Networked Systems (NECSYS)  
2019

<div class="pub-links">
<a class="chip chip-link" href="https://www.sciencedirect.com/science/article/pii/S2405896319320294">ScienceDirect&thinsp;↗</a>
<a class="chip chip-link" href="https://arxiv.org/abs/1905.13548">arXiv&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/1905_13548/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/1905_13548.jpg" alt="Sparse network control sparsity-performance tradeoff">
  <figcaption>Sparsity-performance tradeoff for networked system control under multiplicative noise, showing how regularization promotes sparse feedback structure.</figcaption>
</figure>

# Concurrent Goal Assignment and Collision-Free Trajectory Generation for Multiple Aerial Robots

<div class="author-chips">
<span class="chip-split"><a class="chip-split-left" href="https://bengravell.github.io/portfolio/"><strong>Benjamin Gravell</strong>&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0003-3302-0166">iD&thinsp;↗</a></span>
<span class="chip-split"><a class="chip-split-left" href="https://personal.utdallas.edu/~tyler.summers/">Tyler Summers&thinsp;↗</a><a class="chip-split-right" href="https://orcid.org/0000-0002-0113-8912">iD&thinsp;↗</a></span>
</div>

IFAC Networked & Autonomous Air & Space Systems (NAASS)  
2018

<div class="pub-links">
<a class="chip chip-link" href="https://www.sciencedirect.com/science/article/pii/S2405896318308346">ScienceDirect&thinsp;↗</a>
<a class="chip chip-link" href="https://personal.utdallas.edu/~tyler.summers/papers/NAASS2018.pdf">UT Dallas&thinsp;↗</a>
</div>
<div class="pub-links-kb">
<a class="chip chip-kb" href="https://bengravell.github.io/knowledge-base/papers/2018_gravell_concurrent_goal_assignment_and/">Knowledge Base&thinsp;↗</a>
</div>

<figure class="pub-figure" onclick="pubModalOpen(this)">
  <img src="/portfolio/assets/images/pub/2018_gravell_concurrent_goal_assignment_and.jpg" alt="Concurrent goal assignment and trajectory planning for aerial robots">
  <figcaption>Jointly optimized goal assignments and collision-free polynomial trajectories for a team of aerial robots reconfiguring between formations.</figcaption>
</figure>

<script>
(function () {
  var modal = document.getElementById('pub-modal');
  var modalImg = document.getElementById('pub-modal-img');
  var zoom = 1;

  function setZoom(z) {
    zoom = Math.min(Math.max(z, 0.5), 5);
    modalImg.style.transform = 'scale(' + zoom + ')';
  }

  function openModal(fig) {
    var img = fig.querySelector('img');
    modalImg.src = img.src;
    modalImg.alt = img.alt;
    setZoom(1);
    modal.classList.add('active');
    document.body.style.overflow = 'hidden';
  }

  function closeModal() {
    modal.classList.remove('active');
    document.body.style.overflow = '';
    modalImg.src = '';
  }

  window.pubModalOpen = openModal;

  document.getElementById('pub-modal-close').addEventListener('click', closeModal);
  document.getElementById('modal-zoom-in').addEventListener('click', function () { setZoom(zoom + 0.35); });
  document.getElementById('modal-zoom-out').addEventListener('click', function () { setZoom(zoom - 0.35); });
  document.getElementById('modal-zoom-reset').addEventListener('click', function () { setZoom(1); });

  modal.addEventListener('click', function (e) {
    if (e.target === modal) closeModal();
  });

  document.addEventListener('keydown', function (e) {
    if (!modal.classList.contains('active')) return;
    if (e.key === 'Escape') closeModal();
    if (e.key === '+' || e.key === '=') setZoom(zoom + 0.35);
    if (e.key === '-') setZoom(zoom - 0.35);
    if (e.key === '0') setZoom(1);
  });

  modalImg.addEventListener('wheel', function (e) {
    e.preventDefault();
    setZoom(zoom + (e.deltaY < 0 ? 0.15 : -0.15));
  }, { passive: false });
})();
</script>
