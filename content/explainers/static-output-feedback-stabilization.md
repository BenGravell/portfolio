---
permalink: /explainers/static-output-feedback-stabilization
layout: page
title: "Static output feedback stabilization is NP-hard"
show_sidebar: false
---

Control theorists of the world: as of September 2026, it looks like we are having our own [“OpenAI solves the Navier–Stokes Millennium Prize Problem”](https://openai.com/index/navier-stokes-solution/) moment.

- [2609.16886 — Static output-feedback stabilization is NP-hard](https://arxiv.org/abs/2609.16886)
- [2609.20636 — Complexity of Output Feedback Stabilization](https://arxiv.org/abs/2609.20636)

## Theorem 1

> *Given system matrices `A`, `B`, and `C`, deciding whether there exists a static output-feedback gain `K` such that `A + BKC` is Hurwitz or Schur (stable) is an [NP-hard problem](https://en.wikipedia.org/wiki/NP-hardness).*

I've been aware of this problem for a while and I really didn't think this problem would be solved in my lifetime, given how simple its statement is and how many smart people have tackled it for many decades.

Both papers acknowledge use of ChatGPT 5.6 during the creation of the results. This suggests that recently there has been a step change in the knowledge-aggregating capability of the GPT series of models towards mathematical proof-finding. Interesting to see the papers dropped within 2 days of each other. I'll be intrigued to see if this gets picked up in the math and engineering news coverage.

## Engineering Takeaways

Choosing the wrong overly limited or overly simple structure for a control policy can lead to fundamentally intractable numerical certifications for stabilization.

- If you use **dynamic** output feedback (state estimator + state feedback), you can solve two algebraic Riccati equations in `O(n^3)` operations to decide whether stabilizing gain matrices exist.
- If you use **static** output feedback, there may not be (if [P ≠ NP](https://en.wikipedia.org/wiki/P_versus_NP_problem)) any algorithm that can compute a stabilizing gain in polynomial time.
