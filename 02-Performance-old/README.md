# Session 2: Measuring code performance
[Previous](../01-HPC/) | [Main](../) | [Next](../03-Types/)

# **OBJECTIVE**: Submit a performance analysis of a self-implemented physics textbook function or constant or algorithm using Julia benchmarking tools.
- [ ] **KR1:** Implemented (customized) at least one math/physics textbook function, or constant (prefer those that involve a sum or a loop) in Julia. Discuss its importance in Physics. See Resources below.
- [ ] **KR2:** Compared the performance (accuracy) of the implemented function in comparison with the existing special functions within Julia.
- [ ] **KR3:** Successful loading of the `BenchmarkTools` module. May need to add it first via the `Pkg` or REPL package mode.
- [ ] **KR4:** Itemized differences between `@time`, `@btime`, `@benchmark` and other `@time`-like macros. Nice if the situations when they are best applied are mentioned.
- [ ] **KR5:** Identified demonstrated useful features within the `Profiler` module of Julia. Features must be explained why useful for your case.
- [ ] **KR6:** A discussion of the performance of the implemented function above.

# Resources
The basics of `BenchmarkTools` module package is found [here](https://juliaci.github.io/BenchmarkTools.jl/dev/manual/#Benchmarking-basics).

Special functions may be accessed the [module `SpecialFunctions`](https://specialfunctions.juliamath.org/stable/functions_overview/).
A more complete list of the special functions is found in [a Wikipedia entry](https://en.wikipedia.org/wiki/List_of_mathematical_functions) as well as in the book [Arfken-Weber-Harris, Mathematical Methods for Physicists](https://www.sciencedirect.com/book/9780123846549/mathematical-methods-for-physicists).

ODE Solvers are available at [the SciML page for ODE solvers](https://diffeq.sciml.ai/stable/).

# Slides used
- We used [this slide set during the demo discussion](Session-2-Performance.slides.html).
- There is also [a sample customized ODE solver slide deck](Session-2-1-explore-ODE.html).
