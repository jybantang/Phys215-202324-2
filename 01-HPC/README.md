# Machine Exercise 1: The Julia Framework for HPC
[Previous](../00-Intro/README.md) | [Main](../README.md) | [Next](../02-Performance/README.md)

# **OBJECTIVE**: Explore Julia framework for HPC
- [ ] KR1: Ran different versions of `@code_[mode]` to examine a simple expression (replace `[mode]` with `native`, `typed`, `warntype`, etc.
- [ ] KR2: Showed that constants in codes are passed on after constant function or expression evaluations. May have gone beyond replicating those done in class.
- [ ] KR3: Created two versions of the same function such as `pos(x)` in the book, one with type-instability and the other fixed.
- [ ] KR4: Demonstrated Julia's type-inference and multiple dispatch using the `iam()` function sample as discussed in class. (See Chapter 3)
- [ ] KR5: Ran a function `poly(A,x)` that evaluates the $N$-th order polynomial via a naive approach.
- [ ] KR6: Evaluated the same polynomial using [the package `Polynomials` in Julia](https://juliamath.github.io/Polynomials.jl/stable/).
- [ ] KR7. Used `BenchmarkTools` to plot timing distribution and obtain the best time via the macro `@btime` evaluated at some random number. (See Chapter 2)
- [ ] KR8 (Bonus): Plotted of the time $T$ it takes for the function to run using `@time` macro for different polynomial lengths $N$.

# Naive polynomial evaluation
Any polynomial can be implemented via the formula directly $$p(x)=\sum_{n=0}^N a_n x^n$$where the coefficients $a_n$ is stored as the array `A` such that `length(A)` results to $N+1$. Random coefficients may be used for demonstration purposes. For instance, `A = rand(N+1)` via the internal default `rand()` function to produce $N+1$ random-valued coefficients.

A loop over `x^n` for different $n$-values from $n=0$ to $N-1$ multiplied over the coefficients $a_n$ saved in `A`. This naive implementation can be improved via vectorization natively implemented in Julia's `Array` types (aliased as `Vector` (1D) and `Matrix` (2D)). The use of parallelization can be done via multiple CPU (`Threads.jl`), multiple host (`Distributed.jl`), and GPU utilizations.

# Horner method in `Polynomials.jl`
[The `Polynomials.jl` module](https://juliamath.github.io/Polynomials.jl/stable/) uses Horner's method, among others, to evaluate and manipulate polynomials. It's expected that the implementation is optimized. Challenge yourself in finding a better method and prove it via an appropriate benchmarking plot of runtime $T$ against the polynomial power $N$.

# Julia macros
The `@code_*` macros (replace `*` with `llvm`,`native`, `typed`, `warntype`, _etc._ ) can be use to peek into the lower-level encoding of a function or code snippet.
The code or function must be ready to be executed in the REPL, not for definition.
The `@code_*` documentation starts [here](https://docs.julialang.org/en/v1/stdlib/InteractiveUtils/#InteractiveUtils.@code_lowered).

The `@time` macro can be used as a rudimentary measure of performance.
The documentation is found [here](https://docs.julialang.org/en/v1/manual/performance-tips/#Measure-performance-with-[@time](@ref)-and-pay-attention-to-memory-allocation).

# Benchmarking Tools
Use [the benchmarking package in Julia](https://juliaci.github.io/BenchmarkTools.jl/stable/) to access macros that utilize time functions.
```
using BenchmarkTools
```
Make sure to add the package first via the Package mode first.
```
] add BenchmarkTools
```
Use [this basics manual](https://juliaci.github.io/BenchmarkTools.jl/stable/manual/#Benchmarking-basics) for initial exploration. Often the best time obtained via `@btime` can provide a good measure of the leverage of a given coded method.

The polynomials can be evaluated at any random number via `rand()` function. The coefficients can also be generated as an array of random number `rand(N+1)`, a function which returns a `Vector{Float64}` of length $N$.
