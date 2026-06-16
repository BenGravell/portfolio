---
permalink: /explainers/bootstrapped-multiplicative-noise
layout: page
title: "Robust Learning-Based Control via Bootstrapped Multiplicative Noise"
show_sidebar: false
mathjax: true
---

*[Benjamin Gravell](https://bengravell.github.io/portfolio/), [Tyler Summers](https://personal.utdallas.edu/~tyler.summers/bio.html)*

[L4DC 2020](https://sites.google.com/berkeley.edu/l4dc/home)

Read on [arXiv](https://arxiv.org/abs/2002.10069).

## Summary

We propose a robust adaptive control algorithm that explicitly accounts for inherent non-asymptotic uncertainties arising from models estimated with finite, noisy data. The algorithm has three components: (1) a least-squares nominal model estimator; (2) a bootstrap resampling method that quantifies non-asymptotic variance of the nominal model estimate; and (3) a non-conventional robust control design method using an optimal linear quadratic regulator (LQR) with multiplicative noise. A key advantage of the proposed approach is that the system identification and robust control design procedures both use stochastic uncertainty representations, so that the actual inherent statistical estimation uncertainty directly aligns with the uncertainty the robust controller is being designed against. Numerical experiments show significant improvements over the certainty equivalent controller on both expected regret and measures of regret risk.

## Poster

<iframe src="{{ '/assets/docs/2020_L4DC_Poster.pdf' | relative_url }}#toolbar=0&navpanes=0&view=FitH" style="width:100%;aspect-ratio:3456/2592;border:0;" title="L4DC 2020 Poster"></iframe>
