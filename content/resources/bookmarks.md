---
permalink: /bookmarks
layout: page
title: "Bookmarks"
show_sidebar: false
---

<p class="bookmarks-intro">A cabinet of curiosities from around the web: tools, papers, demos, datasets, and ideas I want to find again.</p>

<nav class="bookmarks-jump" aria-label="Bookmark categories">
  <a href="#programming">Programming practice</a>
  <a href="#cpp">C++</a>
  <a href="#python">Python</a>
  <a href="#matlab">MATLAB</a>
  <a href="#julia">Julia</a>
  <a href="#interoperability">Language interoperability</a>
  <a href="#trajectory-optimization">Trajectory optimization</a>
  <a href="#benchmarks">Benchmarks & datasets</a>
  <a href="#tools">Developer tools</a>
  <a href="#autonomy">Autonomy</a>
  <a href="#robotics">Robotics</a>
  <a href="#optimization">Optimization</a>
  <a href="#machine-learning">Machine learning</a>
  <a href="#graphics">Visual computing</a>
  <a href="#search">Algorithms</a>
  <a href="#systems">Software</a>
  <a href="#signals">Time series</a>
  <a href="#math">Mathematics</a>
  <a href="#design">Visualization</a>
  <a href="#engineering">Engineering</a>
</nav>

<div class="bookmarks-grid">

<section class="bookmark-card" id="programming" markdown="1">

## Programming practice

- [What is Premature Abstraction?](https://www.youtube.com/watch?v=1M5Jn86apeM)
- [PEP 20 – The Zen of Python](https://peps.python.org/pep-0020/)
- [Choose boring technology](https://joshhornby.com/boring-tech)
- [The Checklist Manifesto](https://en.wikipedia.org/wiki/The_Checklist_Manifesto)

</section>

<section class="bookmark-card" id="cpp" markdown="1">

## C++

### Recipes

- [Numerical Recipes in C++](https://numerical.recipes/book.html)

### Linear Algebra

- [Eigen](https://eigen.tuxfamily.org/index.php?title=Main_Page) - header-only C++ template library for linear algebra
- [Armadillo](https://arma.sourceforge.net/) - C++ library for linear algebra & scientific computing
- [Intel oneAPI Math Kernel Library](https://www.intel.com/content/www/us/en/developer/tools/oneapi/onemkl.html)
- [OpenBLAS: optimized BLAS library](https://github.com/OpenMathLib/OpenBLAS)
- [blasfeo: Basic linear algebra subroutines for embedded optimization](https://github.com/giaf/blasfeo)

### Optimization

- [Ceres Solver](http://ceres-solver.org/index.html)
- [LBFGS-Lite](https://github.com/ZJU-FAST-Lab/LBFGS-Lite)

### Sorting

- [orlp/pdqsort: Pattern-defeating quicksort](https://github.com/orlp/pdqsort) - fast, generic sorting algorithm

### Nearest-neighbors

- [nanoflann](https://github.com/jlblancoc/nanoflann)

### Spatial geometry

- [Clothoids](https://github.com/ebertolazzi/Clothoids)
- [Miniball](https://github.com/hbf/miniball)

### Data containers

- [Vector Class Library](https://github.com/vectorclass/version2)
- [HighFive (HDF5)](https://bluebrain.github.io/HighFive/poster/)

### Units

- [Aurora units library](https://github.com/aurora-opensource/au)

</section>

<section class="bookmark-card" id="python" markdown="1">

## Python

### Package Management

- [Pixi](https://pixi.prefix.dev/)
- [uv](https://github.com/astral-sh/uv)
- [Poetry](https://python-poetry.org/)
- [pip](https://pip.pypa.io/en/stable/)

### Type Checking

- [mypy](https://mypy.readthedocs.io/) - the original and most widely adopted Python type checker; strict mode, plugin ecosystem, incremental checking; de facto standard for CI enforcement
- [Pyright](https://github.com/microsoft/pyright) - fast, accurate type checker from Microsoft written in TypeScript; powers Pylance in VS Code; strict mode goes further than mypy in several areas; excellent for large codebases
- [Pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance) - VS Code language server built on Pyright; adds IntelliSense, auto-imports, and semantic highlighting on top of Pyright's type engine
- [Pyrefly](https://pyrefly.org/) - new type checker from Meta written in Rust; aims for extreme speed on very large monorepos; still maturing but very fast incremental analysis. [Used in the PyTorch repo internally](https://pytorch.org/blog/pyrefly-now-type-checks-pytorch/).
- [Ruff](https://docs.astral.sh/ruff/) - primarily a linter/formatter, but enforces many type-annotation style rules and is the fastest option for catching annotation anti-patterns at lint time

### Configuration Management

- [Hydra](https://hydra.cc/)

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

### Optimization

- [CVXPY](https://www.cvxpy.org/) - modeling language for convex optimization; write problems in natural mathematical form
- [PICOS](https://picos-api.gitlab.io/picos/) - high-level interface to conic and integer optimization solvers
- [MOSEK](https://www.mosek.com/) - commercial solver for LP, QP, SOCP, SDP, and mixed-integer problems (free academic license)
- [Gurobi](https://www.gurobi.com/) - state-of-the-art commercial solver for LP, MIP, and QP (free academic license)

### Control & Simulation

- [python-control](https://python-control.readthedocs.io/) - the Python Control Systems Library; classical and modern control analysis and design
- [PyBullet](https://pybullet.org/) - physics simulation for robotics, games, visual effects, and machine learning
- [MuJoCo](https://mujoco.org/) - fast physics engine for robotics, biomechanics, graphics, animation, and ML (open-sourced by DeepMind)

### Reinforcement Learning

- [Spinning Up in Deep RL](https://spinningup.openai.com/) - OpenAI's educational resource for learning deep RL, with clean algorithm implementations
- [Ray RLlib](https://docs.ray.io/en/latest/rllib/index.html) - scalable, production-grade RL on top of [Ray](https://www.ray.io/); pairs with [Tune](https://docs.ray.io/en/latest/tune/index.html) for distributed hyperparameter search
- [CleanRL](https://github.com/vwxyzjn/cleanrl) - single-file, high-quality RL implementations prized for readability and reproducibility
- [Dopamine](https://github.com/google/dopamine) - Google's research framework for fast prototyping of RL algorithms
- [ReAgent](https://github.com/facebookresearch/ReAgent) - Meta's end-to-end platform for applied RL (formerly Horizon)
- [Imitation](https://imitation.readthedocs.io/en/latest/)

### Large-scale Computation Frameworks

- [Ray](https://www.ray.io/)

### Specialized Packages

- [Rtree: Spatial indexing for Python](https://rtree.readthedocs.io/en/latest/) - R-tree spatial index for fast bounding-box queries
- [Faiss](https://faiss.ai/) - efficient similarity search and clustering of dense vectors
- [pqdict](https://pqdict.readthedocs.io/en/latest/intro.html) - an updatable priority queue backed by a dictionary
- [CompressAI](https://interdigitalinc.github.io/CompressAI/intro.html)
- [Diffrax](https://github.com/patrick-kidger/diffrax)
- [Python Optimal Transport](https://pythonot.github.io/)
- [PRegEx](https://github.com/manoss96/pregex)

</section>

<section class="bookmark-card" id="matlab" markdown="1">

## MATLAB

### Optimization

- [CVX](https://cvxr.com/cvx/) - disciplined convex programming; model problems in natural mathematical form
- [YALMIP](https://yalmip.github.io/) - modeling layer for optimization in MATLAB; broad solver support and LMI/SOS tooling
- [SOSTOOLS](https://www.cds.caltech.edu/sostools/) - sum-of-squares polynomial optimization toolbox
- [SeDuMi](https://github.com/sqlp/sedumi) - linear/quadratic/semidefinite cone solver for MATLAB and Octave
- [MOSEK](https://www.mosek.com/) - commercial solver for LP, QP, SOCP, SDP, and mixed-integer problems (free academic license)
- [Gurobi](https://www.gurobi.com/) - state-of-the-art commercial solver for LP, MIP, and QP (free academic license)

### Control

- [Control System Toolbox](https://www.mathworks.com/products/control.html) - classical and modern control system analysis and design
- [Robust Control Toolbox](https://www.mathworks.com/products/robust.html) - design and analysis of control systems with modeled uncertainty
- [System Identification Toolbox](https://www.mathworks.com/products/sysid.html) - build dynamic models from measured input/output data
- [Model Predictive Control Toolbox](https://www.mathworks.com/products/model-predictive-control.html) - design, simulate, and deploy MPC controllers

### Machine Learning

- [Statistics and Machine Learning Toolbox](https://www.mathworks.com/products/statistics.html) - descriptive statistics, probability distributions, and classical ML models

</section>

<section class="bookmark-card" id="julia" markdown="1">

## Julia

### Programming

- [Julia](https://julialang.org/) - high-level, high-performance language for technical computing; solves the two-language problem
- [Julia for VS Code](https://www.julia-vscode.org/) - the official IDE experience

### Numerical & Scientific Computing

- [LinearAlgebra](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) - dense and sparse linear algebra in the standard library
- [Graphs.jl](https://github.com/JuliaGraphs/Graphs.jl) - optimized graph creation and analysis (successor to the archived LightGraphs.jl), with the JuliaGraphs ecosystem:
  - [MetaGraphs.jl](https://github.com/JuliaGraphs/MetaGraphs.jl) - graphs with arbitrary metadata on vertices and edges
  - [SimpleWeightedGraphs.jl](https://github.com/JuliaGraphs/SimpleWeightedGraphs.jl) - weighted graph types
  - [GraphIO.jl](https://github.com/JuliaGraphs/GraphIO.jl) - reading and writing graphs in common file formats

### Optimization

- [SCPToolbox.jl](https://github.com/UW-ACL/SCPToolbox.jl)

### Plots & Visualization

- [Plots.jl](https://docs.juliaplots.org/) - unified plotting API with swappable backends (GR, PyPlot, PlotlyJS, UnicodePlots)
- [StatsPlots.jl](https://github.com/JuliaPlots/StatsPlots.jl) - statistical plotting recipes built on Plots.jl
- [GraphPlot.jl](https://github.com/JuliaGraphs/GraphPlot.jl) - layout-based graph visualization
- [GraphRecipes.jl](https://github.com/JuliaPlots/GraphRecipes.jl) - graph drawing recipes for Plots.jl
- [TikzGraphs.jl](https://github.com/JuliaTeX/TikzGraphs.jl) - publication-quality graph layouts via TikZ
- [Colors.jl](https://github.com/JuliaGraphics/Colors.jl) - color spaces, color maps, and color manipulation
- [LaTeXStrings.jl](https://github.com/JuliaStrings/LaTeXStrings.jl) - LaTeX-rendered strings for plot labels and annotations

### Data Storage

- [FileIO.jl](https://github.com/JuliaIO/FileIO.jl) - unified `load`/`save` dispatch across many file formats
- [JLD2.jl](https://github.com/JuliaIO/JLD2.jl) - save and load arbitrary Julia data in an HDF5-compatible, pure-Julia format

### Software Integration

- [MATLAB.jl](https://github.com/JuliaInterop/MATLAB.jl) - call MATLAB from Julia through the MATLAB Engine (requires a MATLAB installation)
- [PyCall.jl](https://github.com/JuliaPy/PyCall.jl) - call Python functions and libraries directly from Julia
- [Conda.jl](https://github.com/JuliaPy/Conda.jl) - manage a private Conda/Python environment for Julia, pairs with PyCall.jl

</section>

<section class="bookmark-card" id="interoperability" markdown="1">

## Language interoperability

### C++ / Python Interoperability

- [pybind11](https://pybind11.readthedocs.io/en/latest/index.html) - seamless operability between C++11 and Python
- [nanobind](https://github.com/wjakob/nanobind) - small, efficient C++/Python bindings (successor to pybind11)
- [SWIG](https://www.swig.org/) - connects C/C++ programs with many scripting languages
- [Cython](https://cython.org/) - optimising static compiler for Python and the Cython language
- [Codon](https://github.com/exaloop/codon) - high-performance, zero-overhead, extensible Python compiler
- [PyPy](https://pypy.org/) - fast, compliant implementation of Python with a JIT compiler
- [Numba](https://numba.pydata.org/) - JIT compiler that translates Python/NumPy code to fast machine code
- [EigenPy](https://github.com/stack-of-tasks/eigenpy) - exposes Eigen types and NumPy arrays between C++ and Python

</section>

<section class="bookmark-card" id="trajectory-optimization" markdown="1">

## Trajectory optimization

### iLQR / DDP

- [aligator](https://github.com/Simple-Robotics/aligator) - versatile and efficient framework for constrained trajectory optimization (C++)
- [crocoddyl: ddp.cpp](https://github.com/loco-3d/crocoddyl/blob/master/src/core/solvers/ddp.cpp) - DDP solver in the crocoddyl optimal control library
- [mujoco_mpc: ilqg planner](https://github.com/google-deepmind/mujoco_mpc/tree/main/mjpc/planners/ilqg) - iLQG planner inside MuJoCo MPC
- [nuplan-devkit: ilqr_tracker.py](https://github.com/motional/nuplan-devkit/blob/master/nuplan/planning/simulation/controller/tracker/ilqr_tracker.py) - iLQR tracker in the nuPlan planning framework
- [Path optimizer with iLQR](https://github.com/LiJiangnanBit/path_optimizer_ilqr)

### trajax

- [google/trajax](https://github.com/google/trajax/tree/main) - differentiable trajectory optimization using JAX (iLQR, DDP)
- [L4DC 2022 trajax tutorial](https://l4dc.seas.upenn.edu/tutorials/)

### Other solvers

- [TrajOpt](https://rll.berkeley.edu/trajopt/doc/sphinx_build/html/)
- [FATROP demo](https://github.com/jgillis/fatrop_demo)
- [KOMO](https://github.com/MarcToussaint/KOMO)

### ALTRO (Augmented Lagrangian Trajectory Optimizer)

- [TrajectoryOptimization.jl](https://rexlab.ri.cmu.edu/TrajectoryOptimization.jl/stable/) - Julia trajectory optimization framework (REx Lab, CMU)
- [Altro.jl](https://github.com/RoboticExplorationLab/Altro.jl) - Julia implementation of ALTRO
- [ALTRO (C++)](https://github.com/RoboticExplorationLab/ALTRO) - C++ implementation of ALTRO (REx Lab)
- [altro-cpp (optimusride)](https://github.com/optimusride/altro-cpp) - alternative C++ port of ALTRO

### MPPI

- [MPPI-Generic](https://github.com/ACDSLab/MPPI-Generic)

### MuJoCo MPC

- [google-deepmind/mujoco_mpc](https://github.com/google-deepmind/mujoco_mpc) - real-time behaviour synthesis with MuJoCo using Predictive Sampling, MPPI, and related methods
- [[2212.00541] Predictive Sampling: Real-time Behaviour Synthesis with MuJoCo](https://arxiv.org/abs/2212.00541)

### judo

- [bdaiinstitute/judo](https://github.com/bdaiinstitute/judo) - user-friendly Python package for sampling-based MPC (MPPI, CEM, Predictive Sampling) with MuJoCo backend
- [RAI Institute: judo workshop page](https://rai-inst.com/resources/workshop/judo-open-source-package-for-sampling-based-model-predictive-control/)
- [RAI Institute: Combining Sampling and Learning for Dynamic Whole-Body Manipulation](https://rai-inst.com/resources/blog/combining-sampling-and-learning-for-dynamic-whole-body-manipulation/)

### hydrax

- [vincekurtz/hydrax](https://github.com/vincekurtz/hydrax) - sampling-based MPC on GPU with JAX and MuJoCo MJX

### MPC Toolkits

- [TinyMPC](https://tinympc.org/)
- [ETH control toolbox](https://github.com/ethz-adrl/control-toolbox/tree/v3.0.2)
- [SINDY-MPC](https://github.com/eurika-kaiser/SINDY-MPC)
- [Quadruped-PyMPC](https://github.com/iit-DLSLab/Quadruped-PyMPC)

</section>

<section class="bookmark-card" id="benchmarks" markdown="1">

## Benchmarks & datasets

### System Identification

- [Nonlinear Benchmark](https://www.nonlinearbenchmark.org/) - curated, well-documented experimental datasets for nonlinear system identification (Silverbox, Wiener–Hammerstein, cascaded tanks, EMPS, and more)

### Environments

- [Gymnasium](https://gymnasium.farama.org/) - the standard API and reference environments for single-agent RL; maintained by the [Farama Foundation](https://farama.org/) as the successor to OpenAI Gym
- [Safety-Gymnasium](https://safety-gymnasium.readthedocs.io/) - unified safe-RL benchmark with safety-critical tasks and standardized cost metrics ([PKU-Alignment](https://github.com/PKU-Alignment/safety-gymnasium)); the maintained successor to OpenAI's Safety Gym
- [RoboNet](https://www.robonet.wiki/) - large-scale, multi-robot video dataset for robot learning (UC Berkeley, Stanford, UPenn, CMU); also available via [TensorFlow Datasets](https://www.tensorflow.org/datasets/catalog/robonet)
- [Flow](https://github.com/flow-project/flow) - RL framework for autonomous-vehicle traffic control built on the SUMO traffic simulator (UC Berkeley)
- [Eclipse SUMO](https://eclipse.dev/sumo/) - microscopic, multi-modal traffic simulation suite (German Aerospace Center); a standard backend for multi-agent and transportation RL

### Reference Implementations

- [Stable-Baselines3](https://stable-baselines3.readthedocs.io/) - reliable PyTorch implementations of standard RL algorithms; the maintained successor to OpenAI Baselines

### Autonomous Driving

- [Waymo Open Dataset](https://waymo.com/open/)
- [nuScenes](https://www.nuscenes.org/nuscenes)
- [Toyota Woven City prediction dataset](https://woven.toyota/en/prediction-dataset)
- [NVIDIA Physical AI autonomous-vehicle dataset](https://huggingface.co/datasets/nvidia/PhysicalAI-Autonomous-Vehicles)

### Pathfinding

- [Moving AI grid benchmarks](https://www.movingai.com/benchmarks/grids.html)
- [Dragon Age: Origins - Maps & Benchmark Problems](https://digitalcommons.du.edu/gridmaps2D/1/)
- [Dragon Age: Origins - Maps Dataset](https://du-researchportal.esploro.exlibrisgroup.com/esploro/outputs/dataset/Dragon-Age-Origins---Maps/991042011811802766)

### Machine Learning

- [UCI Machine Learning Repository](https://archive.ics.uci.edu/) - the classic collection of datasets for empirical analysis of ML algorithms, with a focus on traditional supervised learning (UC Irvine)
- [UCR time-series archive](https://www.cs.ucr.edu/~eamonn/time_series_data_2018/)

</section>

<section class="bookmark-card" id="tools" markdown="1">

## Developer tools

### Computation & Exploration

- [WolframAlpha](https://www.wolframalpha.com/) - computational knowledge engine; symbolic math, units, and instant answers
- [TensorFlow Playground](https://playground.tensorflow.org/) - interactive, in-browser visualization of how neural networks learn

### Application Frameworks

- [Gradio](https://gradio.app/)
- [Rerun](https://rerun.io/)
- [Shiny for Python](https://shiny.posit.co/py/gallery/)

### Command Line

- [Pixi](https://prefix-dev.github.io/pixi/latest/)
- [uv](https://github.com/astral-sh/uv)
- [Ghostty](https://ghostty.org/)

### Developer Tools

- [Semgrep](https://semgrep.dev/)
- [Archgate](https://archgate.dev/)
- [Linux perf tutorial](https://perfwiki.github.io/main/tutorial/)

### Presentation

- [Slidev](https://github.com/slidevjs/slidev), [Mermaid](https://mermaid.ai/), and [Marp](https://marp.app/)

### Plotting & Visualization

- [Desmos](https://www.desmos.com/calculator) - fast, elegant 2D graphing calculator
- [GeoGebra](https://www.geogebra.org/3d) - interactive 2D/3D geometry, algebra, and plotting
- [Phase plane plotter](https://aeb019.hosted.uark.edu/pplane.html) - plots phase portraits for nonlinear systems with two states

### Robotics Education

- [Duckietown](https://duckietown.com/) - inexpensive, open platform for hands-on autonomy and self-driving education

</section>

<section class="bookmark-card" id="autonomy" markdown="1">

## Autonomous driving

- [nuPlan](https://www.nuplan.org/nuplan) — planning benchmark and devkit
- [Waymax](https://github.com/waymo-research/waymax/tree/a64dfec9be8576b60d9cecc94f406d9812d4a7d0) — Waymo's JAX simulator
- [Comma.ai Controls Challenge](https://github.com/commaai/controls_challenge)
- [HighwayEnv](https://highway-env.farama.org/index.html)
- [CommonRoad](https://commonroad.in.tum.de/)
- [Waymo motion tutorial](https://github.com/waymo-research/waymo-open-dataset/blob/master/tutorial/tutorial_motion.ipynb)
- [Comma.ai: Learning a driving simulator](https://blog.comma.ai/rlcontrols/)
- [PufferDrive](https://emerge-lab.github.io/PufferDrive/index.html) and [PufferDrive 2.0](https://emerge-lab.github.io/PufferDrive/pufferdrive-2.0.html)
- [Nuro's Universal Autonomy Model](https://www.nuro.ai/blog/nuros-universal-autonomy-model)
- [Modular vs. end-to-end autonomy](https://www.openautonomy.com/article/modular-vs-end-to-end-autonomy-architecture-mining)
- [BADAS](https://badas.nexar.app/)
- [MetaDrive](https://github.com/metadriverse/metadrive)
- [How May Mobility's vehicles think](https://maymobility.com/posts/what-our-autonomous-vehicles-are-actually-thinking/)
- [Tesla AI Day 2021: planning and control](https://youtu.be/j0z4FweCy4M?t=4370)
- [Post-training AV models with Alpamayo](https://developer.nvidia.com/blog/how-to-post-train-autonomous-vehicle-models-in-closed-loop-with-nvidia-alpamayo/)
- [AlpaSim](https://github.com/NVlabs/alpasim)
- [AlpaGym](https://github.com/NVlabs/alpagym)
- [Motional on long-tail autonomous driving](https://motional.com/news/cracking-long-tail-code-autonomous-driving-nureasoning)
- [Scaling simulation data generation](https://rai-inst.com/resources/blog/scaling-simulation-data-generation/)

### Safety evaluation

- [Responsibility-Sensitive Safety: five rules](https://iot-automotive.news/rss-explained-the-five-rules-for-autonomous-vehicle-safety/)
- [Mobileye true redundancy](https://www.mobileye.com/technology/true-redundancy/)
- [Kodiak safety report](https://kodiak.ai/safety-report)
- [Explainable end-to-end driving](https://einride.engineering/blog/a-safety-first-approach-to-explainable-e2e-autonomous-driving)
- [Redundancy in autonomous vehicles](https://einride.engineering/blog/redundancy-in-autonomous-vehicles-steering-braking-and-power-systems)
- [Quantifying what-ifs in simulation](https://www.nuro.ai/blog/quantifying-what-ifs-in-simulation)
- [Toyota Research: statistical thinking for robot policy evaluation](https://medium.com/toyotaresearch/statistical-thinking-for-robot-policy-evaluation-from-rigorous-a-b-testing-to-effective-0ae886fbd68d)
- [UNECE Regulation No. 171](https://unece.org/sites/default/files/2025-03/R171e.pdf)
- [How to think about human-likeness](https://daphnecornelisse.substack.com/p/how-to-think-about-human-likeness)
- [Human Baselines](https://humanbaselines.com/?mode=geofence&county=travis)

</section>

<section class="bookmark-card" id="robotics" markdown="1">

## Robotics

- [PickNik](https://picknik.ai/pro/)
- [Robotic Exploration Lab](https://roboticexplorationlab.org/)
- [TorchID](https://isaac.earth/torchid/)
- [Drake](https://drake.mit.edu/)
- [SSIK](https://github.com/personalrobotics/ssik)
- [Dull, dirty, dangerous: undesirable work for robotics](https://rai-inst.com/resources/blog/dull-dirty-dangerous-redefining-undesirable-work-for-robotics/)
- [Underactuated Robotics: Acrobot](https://underactuated.mit.edu/acrobot.html)

### Motion planning

- [DynoPlan](https://github.com/quimortiz/dynoplan/tree/main)
- [RoboPlan](https://github.com/open-planning/roboplan)
- [OMPL gallery](https://ompl.kavrakilab.org/gallery.html)
- [FaSTrack](https://ompl.kavrakilab.org/2017/12/05/fastrack.html)
- [EXOTica](https://github.com/ipab-slmc/exotica)
- [Flow Planner](https://github.com/DiffusionAD/Flow-Planner)
- [VAMP](https://github.com/KavrakiLab/vamp)
- [MPPI with low acceleration](https://opennav.org/news/mppi-low-acceleration/)
- [MPC Workshop](https://mpcworkshop.org/)
- [Performer-MPC](https://research.google/blog/performer-mpc-navigation-via-real-time-on-robot-transformers/)

</section>

<section class="bookmark-card" id="optimization" markdown="1">

## Optimization

### Solvers

- [Nevergrad](https://engineering.fb.com/2018/12/20/ai-research/nevergrad/)
- [PyTorch Hessian-free](https://github.com/ltatzel/PyTorchHessianFree), [pytorch-hessianfree](https://github.com/fmeirinhos/pytorch-hessianfree), and [PyHessian](https://github.com/amirgholami/PyHessian)

### Methods

- [Muon](https://kellerjordan.github.io/posts/muon/)
- [Simulated annealing](https://en.wikipedia.org/wiki/Simulated_annealing)
- [Invex functions](https://en.wikipedia.org/wiki/Invex_function)
- [Photo mosaics via optimization and neural networks](https://medium.com/@tomhuds/creating-photo-mosaics-from-instagram-using-python-linear-optimisation-and-neural-networks-7a27cb6b1a8e)
- [Hessian-free optimization](https://andrew.gibiansky.com/blog/machine-learning/hessian-free-optimization/)
- [CMA-ES](https://en.wikipedia.org/wiki/CMA-ES)

### Assignment problems

- [Hungarian cover in Scenic](https://github.com/google-research/scenic/blob/main/scenic/model_lib/matchers/hungarian_cover.py)
- [Assignment algorithms in Optax](https://github.com/google-deepmind/optax/tree/main/optax/assignment)
- [SciPy linear sum assignment](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.linear_sum_assignment.html)

### Control applications

- [Simple Policy Optimization](https://github.com/MyRepositories-hub/Simple-Policy-Optimization/tree/main)
- [Motion Perceiver](https://github.com/5had3z/motion-perceiver)
- [Policy-gradient literature search](https://openalex.org/works?search.title_and_abstract=Policy+gradient+multiplicative+noise&page=1&sort=relevance_score:desc)
- [Bicycle model with Koopman operators](https://github.com/markosvec/bicycle-model-koopman)
- [Awesome state-space models](https://github.com/radarFudan/Awesome-state-space-models)
- [Minimum-jerk polynomial trajectories](https://se.mathworks.com/help/uav/ref/minimumjerkpolynomialtrajectory.html)
- [acados DDP solvers](https://deepwiki.com/acados/acados/2.1-ocp-nlp-solvers#differential-dynamic-programming-ddp)
- [Data-enabled predictive control tutorial](https://speakerdeck.com/floriandoerfler/a-tutorial-on-data-enabled-predictive-control-deepc)
- [DiffiLQRax](https://diffilqrax.readthedocs.io/en/latest/)
- [Reticulating splines](https://www.argmin.net/p/reticulating-splines)

</section>

<section class="bookmark-card" id="machine-learning" markdown="1">

## Machine learning

- [Is ImageNet Solved? Evaluating Machine Accuracy](https://s.mlcollective.org/dlct_211210.pdf)
- [NVIDIA cuML](https://github.com/rapidsai/cuml)
- [Nonlinear links in linear regression](https://inria.github.io/scikit-learn-mooc/python_scripts/linear_regression_non_linear_link.html)
- [Polynomial features](https://scikit-learn.org/stable/modules/generated/sklearn.preprocessing.PolynomialFeatures.html)
- [Contrastive representation learning](https://lilianweng.github.io/posts/2021-05-31-contrastive/)
- [ONNX with XGBoost](https://onnx.ai/sklearn-onnx/auto_tutorial/plot_gexternal_xgboost.html)

### Kernel machines

- [Kernel ridge regression](https://scikit-learn.org/stable/modules/generated/sklearn.kernel_ridge.KernelRidge.html)
- [Random kitchen sinks](https://people.eecs.berkeley.edu/~brecht/kitchensinks.html) and [random Fourier features](https://gregorygundersen.com/blog/2019/12/23/random-fourier-features/)
- [Are deep networks just kernel machines?](https://m0nads.wordpress.com/2021/05/09/are-deep-networks-just-kernel-machines/)

### Transformers

- [Transformer Explainer](https://poloclub.github.io/transformer-explainer/)

### Feature engineering and selection

- [Recursive feature elimination](https://scikit-learn.org/stable/modules/generated/sklearn.feature_selection.RFECV.html)

### Clustering

- [K-medians](https://pyclustering.github.io/docs/0.9.0/html/df/d68/classpyclustering_1_1cluster_1_1kmedians_1_1kmedians.html)

### Dimensionality reduction

- [Multidimensional scaling](https://en.wikipedia.org/wiki/Multidimensional_scaling)

### Data selection

- [Google Research GIST sampling](https://research.google/blog/introducing-gist-the-next-stage-in-smart-sampling/)

### Extreme classification

- [NeurIPS 2016 extreme-classification workshop](https://neurips.cc/virtual/2016/workshop/6211)

### Reinforcement learning

- [Ericsson on reinforcement learning](https://www.ericsson.com/en/blog/2023/11/reinforcement-learning)
- [Bandit Algorithms](https://tor-lattimore.com/downloads/book/book.pdf)
- [Q-learning](https://en.wikipedia.org/wiki/Q-learning)
- [Spinning Up: intro to RL](https://spinningup.openai.com/en/latest/spinningup/rl_intro2.html)
- [PyTorch DQN tutorial](https://docs.pytorch.org/tutorials/intermediate/reinforcement_q_learning.html)
- [RL tips and tricks](https://araffin.github.io/post/rl102/)
- [Dynamic Programming and Markov Processes](https://books.google.com/books/about/Dynamic_programming_and_Markov_processes.html?id=fXJEAAAAIAAJ)

### Foundation models

- [NanoChat](https://github.com/karpathy/nanochat), [nanoGPT](https://github.com/karpathy/nanoGPT), and [minGPT](https://github.com/karpathy/minGPT)
- [Navigating the token abundance](https://langkilde.se/blog/navigating-the-token-abundance/)
- [Modded NanoGPT](https://github.com/KellerJordan/modded-nanogpt/tree/973030408364f8738b4ad9e8f912d8cbbf56e4d4)
- [Meta SAM Audio](https://ai.meta.com/research/samaudio/)
- [V-JEPA 2](https://ai.meta.com/blog/v-jepa-2-world-model-benchmarks/)
- [EUPE ViT](https://huggingface.co/facebook/EUPE-ViT-T) and [source](https://github.com/facebookresearch/eupe)
- [DINOv2 image-retrieval notebook](https://github.com/roboflow/notebooks/blob/main/notebooks/dinov2-image-retrieval.ipynb) and [overview](https://ai.meta.com/blog/dino-v2-computer-vision-self-supervised-learning/)
- [SAM 3](https://ai.meta.com/research/sam3/)
- [DALL·E](https://openai.com/index/dall-e/)
- [Scenic](https://github.com/google-research/scenic)
- [Beyond world models](https://generalistai.com/blog/beyond-world-models)
- [A functional taxonomy of world models](https://drfeifei.substack.com/p/a-functional-taxonomy-of-world-models)
- [Magenta RealTime](https://magenta.withgoogle.com/magenta-realtime-2)

</section>

<section class="bookmark-card" id="graphics" markdown="1">

## Visual computing

### Computer vision

- [OCR papers and jobs](https://huggingface.co/blog/nielsr/ocr-papers-jobs)
- [OpenCV 5](https://opencv.org/opencv-5/)
- [Genesis](https://github.com/Genesis-Embodied-AI/Genesis)
- [PointCloudCrafter](https://github.com/TUMFTM/PointCloudCrafter)

### Image processing

- [Menger curvature](https://en.wikipedia.org/wiki/Menger_curvature)
- [Line integral convolution](https://en.wikipedia.org/wiki/Line_integral_convolution)
- [Obama multiscale mosaic](https://neoformix.com/2011/ObamaMultiScaleMosaic.html)
- [Hausdorff distance](https://en.wikipedia.org/wiki/Hausdorff_distance)
- [Structural similarity](https://en.wikipedia.org/wiki/Structural_similarity_index_measure)
- [Interactive SVD image compression](https://timbaumann.info/svd-image-compression-demo/)

### Computer graphics

- [A primer on Bézier curves](https://pomax.github.io/bezierinfo/#projections)
- [Object selection in vector graphics](https://blog.notability.com/post/notability-object-selection-adventures-in-vector-graphics)
- [Color and design](https://www.dgp.toronto.edu/~donovan/color/)
- [Ricky Reusser's visual experiments](https://rreusser.github.io/)

</section>

<section class="bookmark-card" id="search" markdown="1">

## Algorithms

### Pathfinding

- [A* search](https://en.wikipedia.org/wiki/A*_search_algorithm)
- [Jump point search](https://en.wikipedia.org/wiki/Jump_point_search)
- [Map representations](http://theory.stanford.edu/~amitp/GameProgramming/MapRepresentations.html) and [A* comparisons](http://theory.stanford.edu/~amitp/GameProgramming/AStarComparison.html)
- [Hierarchical pathfinding](https://alexene.dev/2019/06/02/Hierarchical-pathfinding.html)
- [Clearance-based pathfinding](https://web.archive.org/web/20190411040123/http://aigamedev.com/open/article/clearance-based-pathfinding/#harabor08)
- [Spatial Hash](https://github.com/MIT-SPARK/Spatial-Hash)
- [Contraction hierarchies](https://en.wikipedia.org/wiki/Contraction_hierarchies)
- [Central64](https://github.com/Autodesk/Central64)

### Search

- [Prefix sums](https://en.wikipedia.org/wiki/Prefix_sum)
- [Bloom filters kata](http://codekata.com/kata/kata05-bloom-filters/)
- [Beam search](https://en.wikipedia.org/wiki/Beam_search)

### Vector search

- [RAPIDS cuVS](https://github.com/rapidsai/cuvs)
- [GPU vector-search indexes](https://developer.nvidia.com/blog/accelerating-vector-search-using-gpu-powered-indexes-with-rapids-raft/) and [IVF-flat](https://developer.nvidia.com/blog/accelerated-vector-search-approximating-with-nvidia-cuvs-ivf-flat/)
- [PyNNDescent](https://github.com/lmcinnes/pynndescent)

### Graphs

- [Graphify](https://graphify.net/)
- [Graphifying an LLM wiki](https://medium.com/data-science-in-your-pocket/andrej-karparthys-llm-wiki-codes-graphify-b73bec5d87ea)

### Game AI

- [Stockfish](https://stockfishchess.org/)

</section>

<section class="bookmark-card" id="systems" markdown="1">

## Software

### Programming languages

- [Go](https://go.dev/)
- [Zig](https://ziglang.org/)
- [Bun joins Anthropic](https://bun.com/blog/bun-joins-anthropic)
- [Why Lightpanda uses Zig](https://lightpanda.io/blog/posts/why-we-built-lightpanda-in-zig)
- [Embedded Systems Programming](https://www.embeddedrelated.com/showarticle/152.php)

### Application frameworks

- [Rerun's data-layer tax](https://rerun.io/blog/data-layer-tax)

### Tabular data tools

- [Dimensional data modeling](https://www.ibm.com/docs/en/informix-servers/15.0.x?topic=model-concepts-dimensional-data-modeling)

### UX & Front-end

- [Astryx Design System](https://astryx.atmeta.com/)

### Programming puzzles

- [Advent of Code](https://adventofcode.com/2025/day/2)

### Productivity tools

- [Mendeley Reference Manager](https://www.mendeley.com/reference-manager/library/) and [File Pilot](https://filepilot.tech/)

### GPU computing

- [NVIDIA Warp](https://github.com/nvidia/warp)
- [CUDA C++ programming guide](https://docs.nvidia.com/cuda/cuda-programming-guide/index.html)
- [Bonsai WebGPU](https://huggingface.co/spaces/webml-community/bonsai-webgpu) and [models](https://huggingface.co/collections/prism-ml/bonsai)
- [A first CUDA project](https://sanket-pixel.github.io//blog/2025/that-first-cuda-blog-1/)
- [CUDA setup on Google Colab](https://colab.research.google.com/drive/1m7-XiBmO3CtHJOj9XiKjFNxQnd0o2ez7)

### C++ performance

- [Abseil optimization hints](https://abseil.io/fast/hints.html)
- [CMake precompiled headers](https://edgl.dev/blog/cmake-precompiled-headers/)
- [Agner Fog's optimization manuals](https://www.agner.org/optimize/)

### Data formats

- [MessagePack](https://msgpack.org/index.html)

### High-performance computing

- [HydroGym](https://github.com/dynamicslab/hydrogym)
- [NVIDIA Omniverse libraries](https://developer.nvidia.com/blog/integrate-physical-ai-capabilities-into-existing-apps-with-nvidia-omniverse-libraries/)

</section>

<section class="bookmark-card" id="signals" markdown="1">

## Time series

- [Dynamic time warping](https://en.wikipedia.org/wiki/Dynamic_time_warping)
- [Matrix profiles](https://stumpy.readthedocs.io/en/stable/Tutorial_The_Matrix_Profile.html)
- [Pattern matching](https://stumpy.readthedocs.io/en/latest/Tutorial_Pattern_Matching.html)
- [Nixtla](https://github.com/Nixtla/nixtla)
- [Time-series Transformer](https://huggingface.co/docs/transformers/model_doc/time_series_transformer)
- [NeuralForecast vanilla Transformer](https://nixtlaverse.nixtla.io/neuralforecast/models.vanillatransformer.html)
- [Long-horizon Transformers](https://nixtlaverse.nixtla.io/neuralforecast/docs/tutorials/longhorizon_transformers.html)
- [LASTS](https://github.com/fspinna/lasts)
- [The linear filter for a single time series](https://direct.mit.edu/books/oa-monograph/4361/chapter/187132/The-Linear-Filter-for-a-Single-Time-Series)

### Clustering

- [Time-series clustering with tslearn](https://tslearn.readthedocs.io/en/stable/user_guide/clustering.html)

### Classification

- [Kernel regression in statsmodels](https://www.statsmodels.org/dev/generated/statsmodels.nonparametric.kernel_regression.KernelReg.html)
- [InceptionTime](https://github.com/hfawaz/InceptionTime)
- [MiniRocket](https://github.com/angus924/minirocket/tree/main)

### Forecasting

- [TimesFM-3: A Zero-Shot Foundation Model for Multivariate Forecasting](https://research.google/blog/timesfm-3-a-zero-shot-foundation-model-for-multivariate-forecasting/)
- [Conformal prediction with StatsForecast](https://nixtlaverse.nixtla.io/statsforecast/docs/tutorials/conformalprediction.html)
- [Skforecast](https://skforecast.org/latest/index.html)

### Signal processing

- [Savitzky–Golay filter](https://en.wikipedia.org/wiki/Savitzky%E2%80%93Golay_filter)
- [LULU smoothing](https://en.wikipedia.org/wiki/Lulu_smoothing)
- [One Euro filter](https://jaantollander.com/post/noise-filtering-using-one-euro-filter/)

</section>

<section class="bookmark-card" id="math" markdown="1">

## Mathematics

- [Fast marching method](https://en.wikipedia.org/wiki/Fast_marching_method)
- [Midpoint method](https://en.wikipedia.org/wiki/Midpoint_method)
- [Chebyshev polynomials](https://en.wikipedia.org/wiki/Chebyshev_polynomials)
- [Cédric Villani on optimal transport](https://www.math.ucla.edu/~wgangbo/Cedric-Villani.pdf)
- [Theory of games](https://uvammm.github.io/docs/theoryofgames.pdf)
- [Data-Driven Science and Engineering](https://www.databookuw.com/)

### Statistics

- [Halton sequences in SciPy](https://docs.scipy.org/doc/scipy/reference/generated/scipy.stats.qmc.Halton.html)
- [Sobol sequences](https://en.wikipedia.org/wiki/Sobol_sequence) and [Halton sequences](https://en.wikipedia.org/wiki/Halton_sequence)
- [High-Dimensional Statistics](https://www.cambridge.org/core/books/highdimensional-statistics/8A91ECEEC38F46DAB53E9FF8757C7A4E)
- [High-Dimensional Probability](https://www.math.uci.edu/~rvershyn/papers/HDP-book/HDP-book.html)
- [High-Dimensional Probability](https://www.cambridge.org/core/books/highdimensional-probability/797C466DA29743D2C8213493BD2D2102)

### Decision making

- [Risk-aware product decisions in A/B tests](https://engineering.atspotify.com/2024/03/risk-aware-product-decisions-in-a-b-tests-with-multiple-metrics)
- [Voting systems](https://gpapasot.github.io/ld-comsoc/)
- [Mykel Kochenderfer's textbooks](https://mykel.kochenderfer.com/textbooks/) and [publications](https://mykel.kochenderfer.com/publications/)

</section>

<section class="bookmark-card" id="design" markdown="1">

## Visualization

- [Turbo colormap](https://research.google/blog/turbo-an-improved-rainbow-colormap-for-visualization/)
- [Oklab](https://bottosson.github.io/posts/oklab/)
- [Flowers of Proximity](https://flowersofproximity.com/about-the-flowers-of-proximity)
- [Line integral convolution](https://lic.readthedocs.io/en/latest/index.html)
- [Moments in Graphics: blue noise](https://momentsingraphics.de/BlueNoise.html#_Ulichney93)
- [Complexity Explorables](https://www.complexity-explorables.org/)
- [MoreThemes](https://github.com/y-sunflower/morethemes), [Bumplot](https://github.com/y-sunflower/bumplot), and [Nine.js](https://github.com/y-sunflower/ninejs)

### Urban design

- [Generative housing feasibility](https://www.parametric.se/post/testing-600-housing-units-on-a-municipal-site-a-generative-feasibility-case-study)
- [Generative urban design](https://www.autodesk.com/autodesk-university/article/Generative-Urban-Design-Collaboration-Between-Autodesk-Research-and-Van-Wijnen-2019)
- [Deep-RL urban planning](https://github.com/tsinghua-fib-lab/DRL-urban-planning)

### Transportation

- [A very Norwegian traffic jam](https://www.vg.no/nyheter/i/3pkoP9/busser-fast-paa-alexander-kiellands-plass-i-oslo)

### Game design

- [Behavioral game design](https://www.gamedeveloper.com/design/behavioral-game-design)

### Geospatial data

- [USGS 3DEP LiDAR](https://usgs-lidar.gishub.org/)
- [Swedish environmental geodata](https://geodatakatalogen.naturvardsverket.se/geonetwork/srv/swe/catalog.search#/metadata/8853721d-a466-4c01-afcc-9eae57b17b39)

### Music and culture

- [Vaporwave Aesthetics: Internet Nostalgia and the Utopian Impulse](https://www.repository.cam.ac.uk/items/a33d041f-0e86-47a2-9763-3b37a147d0aa)
- [Disaster Theory: Vaporwave Music as a Hauntological Expression of Sociopolitical Trauma](https://www.stir.ac.uk/research/hub/publication/1781527)
- [Metamodernism and Vaporwave: A Study of Web 2.0 Aesthetic Culture](https://ojs.lib.uwo.ca/index.php/notabene/article/view/13361)

</section>

<section class="bookmark-card" id="engineering" markdown="1">

## Engineering

### Mechanical engineering

- [Stirling's 1816 engine](http://hotairengines.org/closed-cycle-engine/stirling-1816)

### Transportation and logistics

- [A Comparison of Rail and Sea Freight from Europe to Asia](https://www.lunduniversity.lu.se/lup/publication/9055152)

</section>

</div>

<style>
.bookmarks-intro {
  margin: 0 0 1.5rem !important;
  font-size: 1.05rem;
  color: var(--color-subtitle);
}

.bookmarks-jump {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-bottom: 1.5rem;
}

.content .bookmarks-jump a {
  padding: 0.35rem 0.7rem;
  border: 1px solid var(--color-card-border);
  border-radius: 999px;
  background: var(--color-card-bg);
  color: var(--color-accent);
  font-family: 'Space Grotesk', sans-serif;
  font-size: 0.8rem;
  font-weight: 700;
  text-decoration: none;
}

.content .bookmarks-jump a:hover {
  border-color: rgba(0, 168, 150, 0.42);
  background: rgba(0, 168, 150, 0.08);
}

.bookmarks-grid {
  display: grid;
  grid-template-columns: minmax(0, 1fr);
  gap: 1rem;
  align-items: start;
}

.bookmark-card {
  min-width: 0;
  padding: 1.1rem 1.25rem 0.9rem;
  border: 1.5px solid var(--color-card-border);
  border-radius: 10px;
  background: var(--color-card-bg);
  scroll-margin-top: 5rem;
}

.bookmark-card h2,
.bookmark-card h3 {
  break-after: avoid;
  color: var(--color-accent);
}

.bookmark-card h2 {
  margin: 0 0 0.65rem;
  font-size: 1.2rem;
}

.bookmark-card h3 {
  margin: 1.1rem 0 0.4rem;
  font-size: 0.9rem;
  text-transform: uppercase;
  letter-spacing: 0.04em;
}

.bookmark-card ul {
  margin: 0 0 0.6rem 1.1rem;
}

.bookmark-card li {
  break-inside: avoid;
  margin-bottom: 0.35rem;
  line-height: 1.4;
}

.bookmark-card a {
  overflow-wrap: anywhere;
}

</style>
