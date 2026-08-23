---
permalink: /programming/julia
layout: page
title: "Julia"
show_sidebar: false
---

## Programming

- [Julia](https://julialang.org/) - high-level, high-performance language for technical computing; solves the two-language problem
- [Julia for VS Code](https://www.julia-vscode.org/) - the official IDE experience

## Numerical & Scientific Computing

- [LinearAlgebra](https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/) - dense and sparse linear algebra in the standard library
- [Graphs.jl](https://github.com/JuliaGraphs/Graphs.jl) - optimized graph creation and analysis (successor to the archived LightGraphs.jl), with the JuliaGraphs ecosystem:
  - [MetaGraphs.jl](https://github.com/JuliaGraphs/MetaGraphs.jl) - graphs with arbitrary metadata on vertices and edges
  - [SimpleWeightedGraphs.jl](https://github.com/JuliaGraphs/SimpleWeightedGraphs.jl) - weighted graph types
  - [GraphIO.jl](https://github.com/JuliaGraphs/GraphIO.jl) - reading and writing graphs in common file formats

### Optimization

- [SCPToolbox.jl](https://github.com/UW-ACL/SCPToolbox.jl)

## Plots & Visualization

- [Plots.jl](https://docs.juliaplots.org/) - unified plotting API with swappable backends (GR, PyPlot, PlotlyJS, UnicodePlots)
- [StatsPlots.jl](https://github.com/JuliaPlots/StatsPlots.jl) - statistical plotting recipes built on Plots.jl
- [GraphPlot.jl](https://github.com/JuliaGraphs/GraphPlot.jl) - layout-based graph visualization
- [GraphRecipes.jl](https://github.com/JuliaPlots/GraphRecipes.jl) - graph drawing recipes for Plots.jl
- [TikzGraphs.jl](https://github.com/JuliaTeX/TikzGraphs.jl) - publication-quality graph layouts via TikZ
- [Colors.jl](https://github.com/JuliaGraphics/Colors.jl) - color spaces, color maps, and color manipulation
- [LaTeXStrings.jl](https://github.com/JuliaStrings/LaTeXStrings.jl) - LaTeX-rendered strings for plot labels and annotations

## Data Storage

- [FileIO.jl](https://github.com/JuliaIO/FileIO.jl) - unified `load`/`save` dispatch across many file formats
- [JLD2.jl](https://github.com/JuliaIO/JLD2.jl) - save and load arbitrary Julia data in an HDF5-compatible, pure-Julia format

## Software Integration

- [MATLAB.jl](https://github.com/JuliaInterop/MATLAB.jl) - call MATLAB from Julia through the MATLAB Engine (requires a MATLAB installation)
- [PyCall.jl](https://github.com/JuliaPy/PyCall.jl) - call Python functions and libraries directly from Julia
- [Conda.jl](https://github.com/JuliaPy/Conda.jl) - manage a private Conda/Python environment for Julia, pairs with PyCall.jl
