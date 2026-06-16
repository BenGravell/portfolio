---
permalink: /explainers/lqrm-policy-gradient
layout: page
title: "Learning Robust Control for LQR Systems with Multiplicative Noise via Policy Gradient"
show_sidebar: false
mathjax: true
---

*[Benjamin Gravell](https://bengravell.github.io/portfolio/), [Peyman Mohajerin Esfahani](http://www.dcsc.tudelft.nl/~mohajerin/), [Tyler Summers](https://personal.utdallas.edu/~tyler.summers/bio.html)*

IEEE Transactions on Automatic Control (TAC) 2020

Read the paper on [IEEE Xplore](https://ieeexplore.ieee.org/document/9254115) or [arXiv](https://arxiv.org/abs/1905.13547).

## Summary

We show that the linear quadratic regulator with multiplicative noise (LQRm) objective is *gradient dominated,* and thus applying policy gradient results in *global convergence* to the globally optimum control policy with *polynomial dependence* on problem parameters. The learned policy accounts for inherent parametric uncertainty in system dynamics and thus improves stability robustness. Results are provided both in the model-known and model-unknown settings where samples of system trajectories are used to estimate policy gradients.

## Overview

Policy gradient is a general algorithm from reinforcement learning; see Ben Recht's [gentle introduction](https://www.argmin.net/2018/02/20/reinforce/). At a high level, it is simply the application of (stochastic) gradient descent to the parameters of a parametric control policy. Although traditional reinforcement learning treats the tabular setting with discrete state and action spaces, most real-world control problems deal with systems that have continuous state and action spaces. Luckily, policy gradient works much the same way in this setting.

In this post we walk through some of the key points from our paper; see the full text for more details and variable definitions.

## Setting: LQR with multiplicative noise

We consider the following infinite-horizon stochastic optimal control problem with an objective quadratic in the state and input with stochastic dynamics with multiplicative noises (LQRm problem). Expectation is with respect to the initial state and the multiplicative noise.

$$
\begin{aligned}
\underset{\pi \in \Pi}{\text{minimize}} \quad & \mathbb{E}_{x_0,\{\delta_{ti}\},\{\gamma_{tj}\}} \sum_{t=0}^{\infty} \left(x_t^\mathsf{T} Q x_t + u_t^\mathsf{T} R u_t\right), \\
\text{subject to} \quad & x_{t+1} = \left(A + \sum_{i=1}^{p} \delta_{ti} A_i\right) x_t + \left(B + \sum_{j=1}^{q} \gamma_{tj} B_j\right) u_t,
\end{aligned}
$$

Any solution to this problem must be stabilizing, however in the context of stochastic systems we must deal with a stronger form of stability known as *mean-square stability* which requires not only that the expected state return to the origin over time, but also that the (auto)covariance of the state decrease to zero over time:

**Mean-square stability:**

$$ \lim_{t \to \infty} \mathbb{E}_{x_0,\delta,\gamma}\!\left[x_t x_t^\mathsf{T}\right] = 0 $$

Mean-square stability can be further characterized in terms of the vectorized state covariance dynamics operator

$$ \mathcal{F}_K := A_K \otimes A_K + \sum_{i=1}^{p} \alpha_i\, A_i \otimes A_i + \sum_{j=1}^{q} \beta_j\, (B_j K) \otimes (B_j K) $$

> **Lemma 2.1 (Mean-square stability):** A gain $K$ is mean-square stabilizing if and only if the spectral radius $\rho(\mathcal{F}_K) < 1$.
>
> *Proof:* Mean-square stability is defined by $\lim_{t \to \infty} \mathbb{E}_{x_0,\delta,\gamma}[x_t x_t^\mathsf{T}] = 0$, which for linear systems occurs only when $\Sigma_K$ is finite which is equivalent to $\rho(\mathcal{F}_K) < 1$. $\blacksquare$

The LQRm problem is special since it, like the deterministic LQR problem, admits a simple solution which is computable from a certain Riccati equation:

$$ P = Q + A^\mathsf{T} P A + \sum_{i=1}^{p} \alpha_i A_i^\mathsf{T} P A_i - A^\mathsf{T} P B \left(R + B^\mathsf{T} P B + \sum_{j=1}^{q} \beta_j B_j^\mathsf{T} P B_j\right)^{-1} B^\mathsf{T} P A $$

The corresponding optimal gain is:

$$ K^* = -\left(R + B^\mathsf{T} P B + \sum_{j=1}^{q} \beta_j B_j^\mathsf{T} P B_j\right)^{-1} B^\mathsf{T} P A $$

However, unlike the LQR problem with additive noise, *the multiplicative noises change the optimal gain matrix relative to the deterministic case.* In particular, the multiplicative noise can be used as a proxy for uncertainty in the model parameters of a deterministic linear model.

## Motivation: Robust stability

A key issue in control design is robustness i.e. ensuring stability in the presence of model parameter uncertainty. The following example motivates how stochastic multiplicative noise ensures deterministic robustness.

> **Proposition 2.2 (Robust stability):** Suppose the stochastic closed-loop system
>
> $$ x_{t+1} = (a + \delta_t) x_t \tag{5} $$
>
> where $a, x_t, \delta_t$ are scalars with $\mathbb{E}[\delta_t^2] = \alpha$ is mean-square stable. Then, the perturbed deterministic system
>
> $$ x_{t+1} = (a + \phi) x_t \tag{6} $$
>
> is stable for any constant perturbation $\lvert \phi \rvert \le \sqrt{a^2 + \alpha} - \lvert a \rvert$.
>
> *Proof:* By the restriction on $\phi$ and the triangle inequality we have
>
> $$ \rho(a + \phi) = \lvert a + \phi \rvert \le \lvert a \rvert + \lvert \phi \rvert \le \sqrt{a^2 + \alpha}. $$
>
> From Lemma 2.1, mean-square stability of (5) implies
>
> $$ \sqrt{\rho(\mathcal{F})} = \sqrt{a^2 + \alpha} < 1 $$
>
> and thus $\rho(a + \phi) < 1$ proving stability of (6). $\blacksquare$

Although this is a simple example, it demonstrates that the robustness margin increases monotonically with the multiplicative noise variance. We also see that when $\alpha = 0$ the bound collapses so that no robustness is guaranteed, i.e., when $\lvert a \rvert \to 1$. This result can be extended to multiple states, inputs, and noise directions, but the resulting conditions become considerably more complex.

## Case of known dynamics

We already saw that we can solve the optimal control problem exactly (up to a Riccati equation), so what else is there to study? We ultimately care about the case when dynamics are unknown (e.g. as in adaptive control or system identification) which can be handled by policy gradient.

To begin, we see how policy gradient works when the dynamics are fully known, in which case the policy gradient can be evaluated analytically in terms of the dynamics:

> **Lemma 3.1 (Policy Gradient Expression):**
> The policy gradient is given by
>
> $$ \nabla_K C(K) = 2 E_K \Sigma_K = 2(R_K K + B^\mathsf{T} P_K A)\Sigma_K $$
>
> *Proof:* Substituting the RHS of the generalized Lyapunov equation (2) into the cost $C(K) = \operatorname{Tr}(P_K \Sigma_0)$ yields
>
> $$ \begin{aligned} C(K) = {} & \operatorname{Tr}(Q\Sigma_0) + \operatorname{Tr}(A_K^\mathsf{T} P_K A_K \Sigma_0) \\ & + \operatorname{Tr}\!\left(\sum_{i=1}^{p}\alpha_i A_i^\mathsf{T} P_K A_i \Sigma_0\right) + \operatorname{Tr}\!\left(\sum_{j=1}^{q}\beta_j K^\mathsf{T} B_j^\mathsf{T} P_K B_j K \Sigma_0\right). \end{aligned} $$
>
> Taking the gradient with respect to $K$ and using the product rule we obtain
>
> $$ \begin{aligned} \nabla_K C(K) &= 2(R_K K + B^\mathsf{T} P_K A)\Sigma_0 + \nabla_{\bar K}\operatorname{Tr}(P_{\bar K}\mathcal{F}_K(\Sigma_0)) \\ &= 2(R_K K + B^\mathsf{T} P_K A)\Sigma_0 + \nabla_{\bar K}\operatorname{Tr}(P_{\bar K}\Sigma_1) \end{aligned} $$
>
> where the overbar on $\bar K$ is used to denote the term being differentiated. Applying this gradient formula recursively to the last term in the last line (namely $\nabla_{\bar K}\operatorname{Tr}(P_{\bar K}\Sigma_1)$) and recalling the definition of $\Sigma_K$ completes the proof. $\blacksquare$

With this expression, we can prove the key result that the LQRm objective is *gradient dominated* in the control gain matrix $K$:

$$ C(K) - C(K^*) \le \frac{\lVert \Sigma_{K^*} \rVert}{4\,\sigma_{\min}(R)\,\sigma_{\min}(\Sigma_0)^2}\,\lVert \nabla C(K) \rVert_F^2 $$

This (along with Lipschitz continuity) immediately implies that (policy) gradient descent with an appropriate constant step size will converge to the global minimum, i.e. the same solution found by solving a Riccati equation, at a linear (geometric) rate from any initial point. For those familiar with convex optimization, gradient domination bears some similarities to the more restrictive strong convexity condition, which essentially puts a lower bound on the curvature of the function, thus ensuring gradient descent makes sufficient progress at each step anywhere on the function. See Theorem 1 of [this paper](https://arxiv.org/abs/1608.04636) for an extremely short proof of convergence under the gradient domination (Polyak-Lojasiewicz) condition.

The bulk of the technical work that follows goes towards bounding the Lipschitz constant, and thus the step size and convergence rate. We also analyze the natural policy gradient and "Gauss-Newton" steps in parallel to [Fazel et al.](https://arxiv.org/abs/1801.05039) – these steps give faster convergence than vanilla policy gradient but require more information. Note that "Gauss-Newton" step with a stepsize of 1/2 is exactly the policy iteration algorithm (another model-free RL technique) first proven to converge for standard LQR in the case of known dynamics in [continuous-time by Kleinman in 1968](https://ieeexplore.ieee.org/document/1098829) and in [discrete-time by Hewer in 1971](https://ieeexplore.ieee.org/document/1099755) and in the [case of unknown dynamics by Bradtke, Ydstie, and Barto at the 1994 ACC](https://ieeexplore.ieee.org/document/735224). Note that many authors from the 1960s and 1970s did not frame their results under the modern dynamic programming/reinforcement learning labels of "policy iteration" or "Q-learning" but rather as iterative solutions of Riccati equations.

## Case of unknown dynamics

When the dynamics are unknown, the (policy) gradient must be obtained empirically via estimation from sample trajectories. We use the following algorithm to do this:

> **Algorithm 1** Model-Free policy gradient estimation
>
> **Input:** Gain matrix $K$, number of samples $n_{\text{sample}}$, rollout length $\ell$, exploration radius $r$
>
> 1. **for** $i = 1, \ldots, n_{\text{sample}}$ **do**
> 2. &nbsp;&nbsp;&nbsp;&nbsp;Generate a sample gain matrix $\hat{K}_i = K + U_i$, where $U_i$ is drawn uniformly at random over matrices with Frobenius norm $r$
> 3. &nbsp;&nbsp;&nbsp;&nbsp;Generate a sample initial state $x_0^{(i)} \sim \mathcal{P}_0$
> 4. &nbsp;&nbsp;&nbsp;&nbsp;Simulate the closed-loop system for $\ell$ steps starting from $x_0^{(i)}$ yielding the state sequence $\{x_t^{(i)}\}$
> 5. &nbsp;&nbsp;&nbsp;&nbsp;Collect the empirical finite-horizon cost estimate $\hat{C}\_i := \sum\_{t=0}^{\ell} x\_t^{(i)\mathsf{T}}(Q + \hat{K}\_i^\mathsf{T} R \hat{K}\_i) x\_t^{(i)}$
> 6. **end for**
>
> **Output:** Gradient estimate $\hat{\nabla} C(K) := \dfrac{1}{n_{\text{sample}}} \sum_{i=1}^{n_{\text{sample}}} \dfrac{mn}{r^2} \hat{C}_i U_i$

In this case, we use tools from high-dimensional statistics known as concentration bounds to ensure that with high probability the error between the estimated and true gradients is smaller than a threshold. The threshold is chosen small enough that gradient descent with the same step size as in the case of exact gradients provably converges.

## Numerical experiments

We validated policy gradient in the case of known dynamics – this is much faster to simulate than the case of unknown dynamics due to the large number of samples required to estimate the policy gradient accurately.

The first example shows policy gradient working on a suspension system with 2 masses (4 states) and a single input. To demonstrate the peril of failing to account for multiplicative noise when it truly exists, we ran policy gradient both (a) accounting for and (b) ignoring the multiplicative noise. The blue curves show the control evaluated on the LQR cost *with* multiplicative noise while the red curves show the control evaluated on the LQR cost *without* multiplicative noise. When the noise is ignored, the control destabilized the truly noisy system in mean-square. When noise is assumed, the control achieves lower performance on the truly noiseless system, but does not and cannot destabilize it.

<img src="{{ '/assets/images/explainers/lqrm-policy-gradient/image16.png' | relative_url }}" alt="" style="max-width:100%;height:auto;">

The second example shows policy gradient and its faster cousins applied on a random 10-state, 10-input system. With more iterations, the global optimum is more closely approximated.

<img src="{{ '/assets/images/explainers/lqrm-policy-gradient/image17.png' | relative_url }}" alt="" style="max-width:100%;height:auto;">

## Opinions & Take-aways

Although the techniques used in this work and [Fazel et al.](https://arxiv.org/abs/1801.05039) represent a novel synthesis of tools from various mathematical fields, simpler/shorter proofs would help reduce barriers-to-entry for controls researchers unfamiliar with the finer points of reinforcement learning and statistics.

Convergence results were shown, but sample efficiency is still a major concern. Model-based techniques have been shown to be significantly more efficient for learning to control linear systems. This is somewhat expected since a linear dynamics model is the simplest possible; model-free techniques may be competitive when the dynamics are highly nonlinear and difficult to model based solely on data.

## Related work

We envision multiplicative noise as a modeling framework for ensuring robustness; see [older work from Bernstein](https://ieeexplore.ieee.org/document/1104517) which informs this notion. Perhaps the best known framework for robustness in multivariate state space control is H-infinity control. Applying policy gradient to the dynamic game formulation of this framework has received attention lately as well; see [positive results in the two-player setting](https://papers.nips.cc/paper/9335-policy-optimization-provably-converges-to-nash-equilibria-in-zero-sum-linear-quadratic-games.pdf) and [negative results in the many-player setting](https://arxiv.org/abs/1907.03712).
