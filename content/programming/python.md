---
permalink: /programming/python
layout: page
title: "Python"
show_sidebar: false
---

## Package Management

- [Pixi](https://pixi.prefix.dev/)
- [uv](https://github.com/astral-sh/uv)
- [Poetry](https://python-poetry.org/)
- [pip](https://pip.pypa.io/en/stable/)

## Type Checking

- [mypy](https://mypy.readthedocs.io/) - the original and most widely adopted Python type checker; strict mode, plugin ecosystem, incremental checking; de facto standard for CI enforcement
- [Pyright](https://github.com/microsoft/pyright) - fast, accurate type checker from Microsoft written in TypeScript; powers Pylance in VS Code; strict mode goes further than mypy in several areas; excellent for large codebases
- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) - VS Code language server built on Pyright; adds IntelliSense, auto-imports, and semantic highlighting on top of Pyright's type engine
- [Pyrefly](https://pyrefly.org/) - new type checker from Meta written in Rust; aims for extreme speed on very large monorepos; still maturing but very fast incremental analysis. [Used in the PyTorch repo internally](https://pytorch.org/blog/pyrefly-now-type-checks-pytorch/).
- [Ruff](https://docs.astral.sh/ruff/) - primarily a linter/formatter, but enforces many type-annotation style rules and is the fastest option for catching annotation anti-patterns at lint time

## Configuration Management

- [Hydra](https://hydra.cc/)

## Numerical & Scientific Computing

### Core Array & Math

- [NumPy](https://numpy.org/) - foundational N-dimensional array library; the lingua franca for numerical Python
- [SciPy](https://scipy.org/) - algorithms built on NumPy: optimization, integration, interpolation, signal processing, linear algebra, statistics
- [SymPy](https://www.sympy.org/) - symbolic mathematics (CAS) in pure Python

### DataFrames

- [Pandas](https://pandas.pydata.org/) - the classic DataFrame library; row-oriented, index-centric, mature ecosystem
- [Polars](https://pola.rs/) - fast DataFrame library written in Rust; lazy evaluation, Apache Arrow columnar memory, excellent for large datasets
- [cuDF](https://docs.rapids.ai/api/cudf/stable/) (RAPIDS) - GPU-accelerated DataFrames with a pandas-compatible API
- [cuDF-powered Polars](https://docs.rapids.ai/api/cudf/stable/cudf_polars/)
- [Ibis](https://github.com/ibis-project/ibis)

### Linear Algebra & Array Backends

- [CuPy](https://cupy.dev/) - NumPy/SciPy-compatible array library running on CUDA GPUs
- [JAX](https://jax.readthedocs.io/) - NumPy on accelerators (CPU/GPU/TPU) with automatic differentiation and JIT via XLA; popular in ML research
- [Dask](https://dask.org/) - parallel and out-of-core computing; scales NumPy/Pandas workflows to clusters or large-memory machines

### Machine Learning & Deep Learning

- [scikit-learn](https://scikit-learn.org/) - classical ML: classification, regression, clustering, preprocessing, model selection
- [PyTorch](https://pytorch.org/) - dominant deep learning framework; dynamic graphs, strong research ecosystem
- [TensorFlow / Keras](https://www.tensorflow.org/) - production-oriented deep learning; Keras is its high-level API
- [AutoGluon](https://github.com/autogluon/autogluon)
- [Metric-learn](https://contrib.scikit-learn.org/metric-learn/index.html) and [PyTorch Metric Learning](https://github.com/KevinMusgrave/pytorch-metric-learning)
- [MAPIE](https://github.com/scikit-learn-contrib/MAPIE)
- [OptBinning counterfactuals](https://gnpalencia.org/optbinning/counterfactual.html) and [scorecards](https://gnpalencia.org/optbinning/scorecard.html)
- [OpenFE](https://github.com/IIIS-Li-Group/OpenFE)
- [InterpretML](https://interpret.ml/)
- [Transformers](https://github.com/huggingface/transformers)

### Visualization

- [Matplotlib](https://matplotlib.org/) - foundational plotting library; verbose but fully controllable
- [Seaborn](https://seaborn.pydata.org/) - statistical visualization built on Matplotlib; cleaner defaults
- [Plotly](https://plotly.com/python/) - interactive plots for notebooks and web; also powers Dash dashboards
- [Python palettes](https://github.com/y-sunflower/pypalettes), [arrows](https://github.com/y-sunflower/drawarrow), [fonts](https://github.com/y-sunflower/pyfonts), and [charts](https://github.com/y-sunflower/dayplot)

### Graphs & Networks

- [NetworkX](https://networkx.org/) - creation, manipulation, and analysis of complex networks and graphs in pure Python

## Optimization

- [CVXPY](https://www.cvxpy.org/) - modeling language for convex optimization; write problems in natural mathematical form
- [PICOS](https://picos-api.gitlab.io/picos/) - high-level interface to conic and integer optimization solvers
- [MOSEK](https://www.mosek.com/) - commercial solver for LP, QP, SOCP, SDP, and mixed-integer problems (free academic license)
- [Gurobi](https://www.gurobi.com/) - state-of-the-art commercial solver for LP, MIP, and QP (free academic license)

## Control & Simulation

- [python-control](https://python-control.readthedocs.io/) - the Python Control Systems Library; classical and modern control analysis and design
- [PyBullet](https://pybullet.org/) - physics simulation for robotics, games, visual effects, and machine learning
- [MuJoCo](https://mujoco.org/) - fast physics engine for robotics, biomechanics, graphics, animation, and ML (open-sourced by DeepMind)

## Reinforcement Learning

- [Spinning Up in Deep RL](https://spinningup.openai.com/) - OpenAI's educational resource for learning deep RL, with clean algorithm implementations
- [Ray RLlib](https://docs.ray.io/en/latest/rllib/index.html) - scalable, production-grade RL on top of [Ray](https://www.ray.io/); pairs with [Tune](https://docs.ray.io/en/latest/tune/index.html) for distributed hyperparameter search
- [CleanRL](https://github.com/vwxyzjn/cleanrl) - single-file, high-quality RL implementations prized for readability and reproducibility
- [Dopamine](https://github.com/google/dopamine) - Google's research framework for fast prototyping of RL algorithms
- [ReAgent](https://github.com/facebookresearch/ReAgent) - Meta's end-to-end platform for applied RL (formerly Horizon)
- [Imitation](https://imitation.readthedocs.io/en/latest/)

## Large-scale Computation Frameworks

- [Ray](https://www.ray.io/)

## Specialized Packages

- [Rtree: Spatial indexing for Python](https://rtree.readthedocs.io/en/latest/) - R-tree spatial index for fast bounding-box queries
- [Faiss](https://faiss.ai/) - efficient similarity search and clustering of dense vectors
- [pqdict](https://pqdict.readthedocs.io/en/latest/intro.html) - an updatable priority queue backed by a dictionary
- [CompressAI](https://interdigitalinc.github.io/CompressAI/intro.html)
- [Diffrax](https://github.com/patrick-kidger/diffrax)
- [Python Optimal Transport](https://pythonot.github.io/)
- [PRegEx](https://github.com/manoss96/pregex)
